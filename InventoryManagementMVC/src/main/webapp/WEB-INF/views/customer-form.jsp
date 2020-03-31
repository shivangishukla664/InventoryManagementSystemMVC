<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>

<script src="<c:url value="/resources/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

<link href="<c:url value="/resources/css/IndexCss1.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
rel="stylesheet">
</head>
<body background="<c:url value="/resources/images/back1.jpg"/>"/>

<div class="container" >
		<div class="col-md-offset-2 col-md-7" style="box-shadow: 0px 10px 15px black;margin-top: 80px;">
			<h2 class="text-center">Customer Registration</h2>
			<div class="panel panel-info">
			
				<div class="panel-heading">
					<div class="panel-title">
					<p class="text-center">Create your account.It's free and only takes a minute</p>
					</div>
				</div>
				
				<div class="panel-body">
				
				
					<form:form action="saveCustomer" cssClass="form-horizontal"
						method="post" modelAttribute="customer">

						<!-- need to associate this data with customer id -->
						<form:hidden path="cust_id" />

						<div class="form-group">
							<label for="name" class="col-md-3 control-label">Name</label>
							<div class="col-md-9">
								<form:input path="name" cssClass="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-md-3 control-label">Password</label>
							<div class="col-md-9">
								<form:password path="password" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-md-3 control-label">Email</label>
							<div class="col-md-9">
								<form:input path="email" cssClass="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="phone" class="col-md-3 control-label">Phone</label>
							<div class="col-md-9">
								<form:input path="phone" cssClass="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="address" class="col-md-3 control-label">Address</label>
							<div class="col-md-9">
								<form:input path="address" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 ">
								<form:button cssClass="btn btn-success btn-block">Submit</form:button>
							</div>
						</div>

<center><p>Already have an account? <a style="color: blue;" href="Login.html">login</a></p></center>	
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>