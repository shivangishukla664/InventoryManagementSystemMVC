
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>index</title>

<script src="<c:url value="/resources/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

<link href="<c:url value="/resources/css/IndexCss.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
rel="stylesheet">

</head>
<body background="<c:url value="/resources/images/HomePic.jpg"/>"/>

<div class="container-fluid">
	
	<div class="d1">
        <header><img class="img1" src="<c:url value="/resources/images/InvenLogo.png"/>"/>Inventory Management System</header>
    </div>
<br>

<div style="color: blue" align="center"><h4>
Welcome  Employee ID: ${usr.cust_id} User: ${usr.email} </h4></div>


<div class="topnav">

  <a  href="#home">Profile</a>
  <a href="#news">View Products Details</a>
  <a href="#contact">Buy Product</a>
  <a href="#contact">Invoice Details</a>
 
  
     <div class="topnav-right">
    	 
          <a href="user/loginForm">Log out</a>
           
     </div>
</div>

<div id="footer">
    Copyright &copy; newhowizons.com
    <div>Invetory</div>
</div>
<div class="col-lg-2"></div>



</div>
</body>
</html>
