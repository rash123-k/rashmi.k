<%-- 
    Document   : bookings
    Created on : 30 Jun, 2020, 7:46:57 PM
    Author     : Ravish Reddy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link href="../../book/web/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="../../book/web/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>My Bookings</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="book/assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="book/assets/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="book/assets/css/untitled.css">
</head>

<body id="page-top">
    
    <div id="wrapper">
        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-success p-0">
            <div class="container-fluid d-flex flex-column p-0">
                <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
                    <div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-home"></i></div>
                    <div class="sidebar-brand-text mx-3"><span>Home Service</span></div>
                </a>
                <hr class="sidebar-divider">
                <ul class="nav navbar-nav text-light mt-0" id="accordionSidebar">
                    <li class="nav-item" role="presentation">
                        <a class="nav-link text-left" href="profile.html"><i class="fas fa-user"></i><span>Profile</span>
                        </a>
                        
                        <a class="nav-link active" href="booking.html"><i class="fas fa-bold"></i><span> My Bookings</span></a>
                        
                        <a class="nav-link " href="cart-new.html"><i class="fas fa-shopping-cart"></i><span>My Cart</span></a>
                        <a class="nav-link active" href="booking.html"><i class="fas fa-bold"></i><span> Password Settings</span></a>
                        <a class="nav-link" href="profile.html"><i class="icon-logout" ></i><span>Log out</span></a></li>
               
                </ul>
                <div class="text-center d-none d-md-inline"></div>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <div class="container-fluid">
                    <h3 class="text-success mb-4">My Bookings</h3>
                   
   
    <% String email="meg@gmail.com";
       Connection con;
       PreparedStatement pst;
       ResultSet rs;
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost/logindetails","root","");
       String query1="select * from logindetails.address where email='meg@gmail.com'";
       Statement st1=con.createStatement();
       rs=st1.executeQuery(query1);
       boolean Records=rs.next();
       
      if(!Records){%>
       
       <h3>No Bookings right Now</h3><br><br>
        <!--<button style="text-align: center;background-color: black;border: none;color: white;font-size: 20px;border-radius: 8px;width: 250px;">Book The Services</button>-->
        <a href="#" style="background-color: black;border-color:black" class="btn btn-primary btn-lg">Book The Services</a>&nbsp;
       <%}
       
       try{
           do{%>
           <div class="text-right highlight-phone"align="right">
        <div class="container">
            <div class="row"><div class="col-md-12">
                <div class="col-md-8">
                    <div class="text-right intro">
                        <div style="background-color: white;color: black" class="col col-sm col-md">
                            <p style="font-size: 20px" align="left">Service:<%=rs.getString("service")%></p>
                       <p style="font-size: 20px" align="left"><i class="fas fa-rupee-sign"></i>Price:<%=rs.getString("price")%></p>
                       <p style="font-size: 20px" align="left" value="date" type="date" pattern="dd-MMM-yyyy" >Time and Date:<br>
                           <%=rs.getString("time")%><br>
                         </p>
                         <button style="background-color:#1cc88a;border-color: #1cc88a;"  align="right">Order Confirmed</button>
                        
                        </div></div>
            </div>
        </div>
    </div></div>
        <%
           }while(rs.next());
}
catch(SQLException error){%>
<p>Error</p>
<% } %>
      
    
    <br><br>
    
        
        
    
    <br><br>
                </div>
            </div>
            
        </div>
    </div>
     
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/theme.js"></script>
    
</body>

</html>
