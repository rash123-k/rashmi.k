<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
String username=request.getParameter("username");
String password=request.getParameter("password");
String gender=request.getParameter("gender");
string email=request.getparameter("email");
string phonecode=request.getparameter("phonecode");
string phone=request.getparameter("phone");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/registration form?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into users(id,username,password,gender,email,phonecode,phone)values('"+id+"','"+username+"','"+password+"','"+email+"','"+phonecode+"','"+phone+"')");
out.print("<script> alert('successfully registered'); " +
                        "setTimeout(function() {window.location.href='register.jsp'});  </script>");
}

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>