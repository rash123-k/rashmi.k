<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String email=request.getParameter("email");
try
{
Class.forName("com.mysql.jdbc.Driver");

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/demo?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM users WHERE email ="+email);
out.print("<script> alert('successfully registered'); " +
                        "setTimeout(function() {window.location.href='users.jsp'});  </script>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>