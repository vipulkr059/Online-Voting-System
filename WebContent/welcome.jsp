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
        
        
        
        <div class="reg" style="margin-left: 500px;">
            <form action="Vote" method="post">
            <h3 style="margin-left: 0px; margin-bottom: -20px;margin-top: 15px;">Enter Your Register Voter card Number</h3>
           
            <br>
             <input name="voter_card_number"  placeholder="Enter your Voter Card Number" type="text">
             <br>
             <br>
             <select style="height: 35px; width: 310px;" name="parties">
  <option value="#">Select Your Party</option>
  <option value="bjp">Bharatiya Janata Party</option>
  <option value="app">AAP</option>
  <option value="congrace">Congress</option>
  <option value="aitc">MVC</option>
  <option value="bsp">Bahujan Samaj Party</option>
  <option value="cpi">Communist Party of India</option>
  <option value="cpim">Communist Party of India (Marxist)</option>
</select>
            <br>
            <br>
             <input value="Vote"   type="submit"  class="btn" style="padding-bottom: 40px; width: 150px; margin-left: 70px;"> 
            
         
            
           </form>  
        </div>
        
  
    </div>
   
    
   
    

</body>

<%@ include file="footer.jsp"%>
</html>
