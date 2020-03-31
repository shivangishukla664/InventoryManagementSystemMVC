<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/IndexCss.css" />"
rel="stylesheet">

</head>

<body background="<c:url value="/resources/images/back1.jpg"/>"/>

<div class="d1">
<header><img alt="" src="<c:url value="/resources/images/InvenLogo.png"/>"/>Inventory Management System</header>
</div>
<br><br>

<div class="topnav">
  <a href="buyproduct">Buy Product</a>
  <a href="sell">Sell Product</a>
  <a href="aboutus">About Us</a>
   <a href="contactus">Contact Us</a>
  
</div>

<br><br>
<h1>Welcome to Home Page</h1>


<div id="footer">
    Copyright &copy; newhowizons.com
    <div>Invetory</div>
</div>


</body>
</html>