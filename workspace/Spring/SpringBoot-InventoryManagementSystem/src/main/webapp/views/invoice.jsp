<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>PayPal Invoicing SDK - SendInvoice</title>
	<link rel="stylesheet" type="text/css" href="sdk.css"/> 
	<script type="text/javascript" src="sdk.js"></script>
</head>
<body>
	<img src="https://devtools-paypal.com/image/bdg_payments_by_pp_2line.png" alt="PAYMENTS BY PayPal" />
	<div id="wrapper">
		<div id="header">
			<h3>SendInvoice</h3>
			<div id="apidetails">SendInvoice API operation is used to send
				an invoice to a payer and notify the payer of the pending invoice.</div>
		</div>
		<form method="POST" >
			<div id="request_form">
				<div class="params">
					<div class="param_name">
						InvoiceID* (Get Invoice ID via <a href='CreateInvoice'>CreateInvoice</a>
						or <a href='CreateInvoice'>CreateAndSendInvoice</a>)
					</div>
					<div class="param_value">
						<input type="text" name="invoiceID" value="" size="50"
							maxlength="260" />
					</div>
				</div>
				<br>
				<div class="submit">
					<input type="submit" name="SendBtn" value="SendInvoice" /> <br />
				</div><br>
				<a href="index.jsp">Home</a>
			</div>
		</form>
	</div>
</body>
</html>