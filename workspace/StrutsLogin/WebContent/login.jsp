<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image:url('pic4.jpg');">
 
 
        <div style="color:red" >
            <html:errors />
        </div>
        
        <html:form action="/Login" >
        
       
			<center>
			<h1 style="color: black;font-family: Helvetica;">Account Login</h1>
			<br>
		    </center>
		 
		 
		 
		  <div style=" background-color:skyblue;margin-left:500px;margin-right:500px"> <br> <br><br> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
        
           User Name : <html:text name="LoginForm" property="userName"  /> <br><br> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
           
           Password  : <html:password name="LoginForm" property="password" style="margin-left:10px;"/> <br><br>
           
           <html:submit value="Login" style="margin-left:245px;" />
         
         
<center>
<h5>Create a new account??
<a href="Register.html">Register</a></h5>
</center><br><br>
          </div>    
            
        </html:form>
         
    </body>
</html>
