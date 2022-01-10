<%-- 
    Document   : login
    Created on : Sep 29, 2016, 12:31:22 AM
    Author     : Oops
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/home.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="header.jsp" %>
        <title>JSP Page</title>
    </head>
    <body>
     <div align="center">
			<font color='red' size='2pxl'>
   <% String msg=request.getParameter("errMessage");
	 if(msg!=null){
	 	if(msg.equals("adlogin"))
	 						out.println("YOU ENTERED WRONG ADMIN CREDENTIALS");
	 
	 }				%>
    
    
    </font></div>
        
        <div>
            <div class="reg_back">
                <h1 style="margin-left: 70px;">Login Form</h1>
          <form action="Login" method="post">
            <pre>
         <input name="email" placeholder="ADMIN Id"    type="text"> 

         <input name="pass"  placeholder="password" type="password"> 
            

        <input value="Login"   type="submit" class="btn" style="padding-bottom: 30px;"> 


            </pre>
            </form> 
            </div>
        </div>
  
        <%@include file="footer.jsp" %>
    </body>
</html>
