<%-- 
    Document   : password
    Created on : Apr 29, 2017, 1:12:55 AM
    Author     : Oops
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<title>Online Voating System</title>
<%@ include file="header.jsp"%>
<link href="css/home.css" rel="stylesheet" type="text/css">

    
    
    
    <div class="back_image">
        
         <%
            String contact = request.getParameter("con");
            
        %>
        
        <div class="reg">
              <pre>
            <form action="welcome.jsp" method="post">
            <h3 style="margin-left: 100px; margin-bottom: -50px;margin-top: -15px;">Enter Your Register Voter card Number</h3>
             
             
             
             <input name="voter_card_number"  placeholder="Enter your OTP Password" type="text">
                         <h3 style="margin-top: -15px;margin-left: 100px;">OTP has sent on your number : </h3>
                         <h2 style="margin-top: -40px;margin-left: 100px;"><%out.println(contact);%></h2>
             
                       <input value="Proceed"   type="submit"  class="btn" style="padding-bottom: 40px; width: 150px;"> 
            
                         
            </form>
            </pre>
             
        </div>
        
  
    </div>
   
    
   
    

</body>

<%@ include file="footer.jsp"%>
</html>
