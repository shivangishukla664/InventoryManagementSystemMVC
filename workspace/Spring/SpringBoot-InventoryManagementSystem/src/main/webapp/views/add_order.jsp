<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Order</title>

<script src="<c:url value="/resources/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script type="text/javascript" src="/resources/static/js/app.js"></script>

<link href="<c:url value="/resources/static/css/IndexCss.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
rel="stylesheet">
</head>
<body background="<c:url value="/resources/static/images/pic3.jpg"/>"/>
<div class="topnav">

  <a  href="#home">Profile</a>
  <a href="/view_customer_product">View Products Details</a>
  
  <a href="#contact">Invoice Details</a>

  
     <div class="topnav-right">
    	 
          <a href="logout">Log Out</a>
           
     </div>
</div>

<div class="col-lg-3">
	
	</div>

<div class="container" >

		<div class=" col-lg-6" style="box-shadow: 0px 10px 15px black;margin-top: 80px;background-color: white;">
			<center><h1 style="font-family: Californian FB;">Place New Order</h1>
					</center>
				
					<form:form id="productform" action="saveOrder" method="post" modelAttribute="product"> 

						<!-- need to associate this data with customer id -->
						<div class="form-group">
							
							<div class="col-xs-12 col-md-12 col-lg-12">
							<label for="id" style="font-family: Californian FB;">Id</label>
								<input type="hidden" name="id" value=${product.id} readonly="readonly" Class="form-control" />
							</div>
						</div><br>
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="name" style="font-family: Californian FB;">Name</label>
								<input type="text" name="name" value=${product.name} readonly="readonly" placeholder="Enter Product Name" Class="form-control" />
							</div>
						</div><br>
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="type" style="font-family: Californian FB;">Type</label>
								<input type="text" name="type" value=${product.type} readonly="readonly" placeholder="Enter Product Type" Class="form-control" />
							</div>
						</div><br>

						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12" style="font-family: Californian FB;">
							<label for="brand" style="font-family: Californian FB;">Brand</label>
								<input type="text" name="brand" value=${product.brand} readonly="readonly" placeholder="Enter Product Brand" Class="form-control" />
							</div>
						</div>
						<br>
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="madien" style="font-family: Californian FB;">Made In</label>
								<input type="text" name="madein" value=${product.madein} readonly="readonly" placeholder="Enter Madein" Class="form-control" />
							</div>
						</div>
						<br>
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="quantity" style="font-family: Californian FB;">Quantity</label>
								<input type="text" name="quantity"  placeholder="Enter Product Quantity" Class="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="price" style="font-family: Californian FB;">Price</label>
								<input type="text" name="price1" value=${product.price1} readonly="readonly" placeholder="Enter Product Price" Class="form-control" />
							</div><br>
						</div>
<br><br>
						<!-- 
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12" >
							<label for="customer_id" style="font-family: Californian FB;">Customer Id</label>
								<input type="text" name="cust_id"   Class="form-control" />
							</div>
						</div> -->
						<br>
						
						<%-- <div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="customername" style="font-family: Californian FB;">Customer Name</label>
								<input type="text" name="name" value="${customer.name}" placeholder="Enter Your Name" Class="form-control" />
							</div>
						</div> --%>
				
						<div class="form-group"><br>
							<!-- Button -->
							<div class="col-xs-12 col-lg-12 ">
								<form:button Class="btn btn-success btn-block">Submit</form:button>
							</div><br><br>
						</div>



					</form:form>
				
			
		</div><br>
	</div>
	
	<div class="col-lg-3"></div>
</body>
</html>