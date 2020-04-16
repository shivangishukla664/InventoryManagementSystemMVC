
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>index</title>

<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>

<link href="<c:url value="/resources/static/css/IndexCss.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
rel="stylesheet">

</head>
<body background="<c:url value="/resources/static/images/Pic1.jpg"/>"/>

<div class="container-fluid">
	

<div class="topnav">

  <a  href="#home">Profile</a>
  <a href="/view_customer_product">View Products Details</a>
  
  <a href="#contact">Invoice Details</a>

  
     <div class="topnav-right">
    	 
          <a href="logout">Log Out</a>
           
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
