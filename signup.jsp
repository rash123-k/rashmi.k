<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/logindetails?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
Statement st=con.createStatement();
String username=request.getParameter("username");
String email=request.getParameter("email");
String password=request.getParameter("password");
String phone_number=request.getParameter("phone_number");
String strQuery = "SELECT COUNT(*) FROM users where email='"+email+"'";
ResultSet rs = st.executeQuery(strQuery);
rs.next();
String Countrow = rs.getString(1);
out.println(Countrow);
if(Countrow.equals("0")){
int i=st.executeUpdate("insert into users(username,email,password,phone_number,address,city,country)values('"+username+"','"+email+"','"+password+"','"+phone_number+"','"+null+"','"+null+"','"+null+"')");
 out.print("<script> alert('successfully registered'); " +
                        "setTimeout(function() {window.location.href='login.html'});  </script>");
}
else{
    out.print("<script> alert('Email already exists'); " +
                        "setTimeout(function() {window.location.href='signup.html'});  </script>");
}
}
catch (Exception e){
e.printStackTrace();
}
%>
