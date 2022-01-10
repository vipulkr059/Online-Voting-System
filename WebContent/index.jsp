<%-- 
    Document   : index
    Created on : Sep 28, 2016, 4:20:14 PM
    Author     : Oops
--%>



<html>

    <div align="center">
			<font color='white' size='2pxl'>
   <% String msg=request.getParameter("errMessage");
	 if(msg!=null){
	 	if(msg.equals("login"))
	 						out.println("YOU ENTERED WRONG CREDENTIALS");
	 
	 }				%>
    
    
    </font></div>
<head>
<title>Online Voting System</title>
<%@ include file="header.jsp"%>
<link href="css/home.css" rel="stylesheet" type="text/css">


</head>
<body>
   
    
    <div class="back_image">
        
        <div class="reg">
              <pre>
            <form action="useraction" method="post">
            <input name="aadhar"  placeholder="Enter your Adhar Card Number" type="number" pattern="[0-9]{12}"required>
           
                     
            <input name="password"  placeholder="Enter your password" type="password" required>

                   
            <input value="Login"   type="submit" class="btn" style="padding-bottom: 30px;"> 
            
                        
            
           
            </form>
            </pre>
             
        </div>
   

</body>

<%@ include file="footer.jsp"%>
</html> 
