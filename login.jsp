<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String email=request.getParameter("email").toLowerCase();
session.putValue("email",email);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/logindetails?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
Statement st= con.createStatement();


try{
    if (email.equalsIgnoreCase("HomeserviceADMINROOT@ROOT.com") && password.equals("Homeservice@ADMINROOT")) {
        response.sendRedirect("JSP/admin/index.jsp");
    }
}catch(Exception e){
    out.println("admin not working"+ e);
}
    
ResultSet rs;
        try {
            assert st != null;
            rs = st.executeQuery("select email,username,password from users where email='" + email + "' " +
                    "and password='" + password + "'");

            if (rs.next()) {
                session.setAttribute("username", rs.getString(1));
                  out.print("<script> alert('Successfully logged in'); " +
                "setTimeout(function() {window.location.href='signup.html'});  </script>");
            } else {
                out.print("<script> alert('Invalid email or password'); " +
                "setTimeout(function() {window.location.href='login.html'});  </script>");
            }
        } catch (SQLException e) {
            out.print("Database connection Error" + e);
            System.out.println("rs");
            e.printStackTrace();
        }
   
%>
