<%-- 
    Document   : index
    Created on : Sep 28, 2016, 4:20:14 PM
    Author     : Oops
--%>



<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>Online Voating System</title>
<%@ include file="header.jsp"%>
<link href="css/home.css" rel="stylesheet" type="text/css">

    <%
  
   String s1 = (String)session.getAttribute("adminname");
   
    //out.println(s1);
   
    String a[] = new String[100];
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voating", "root", "root");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select partie,count(partie) as c from vote group by partie");
    int i=0;
    while(rs.next()){
        a[i] = rs.getString("c");
        i++;
    }
    
  
    
    
    %>
    
    
    <div class="back_image">
        
        <div class="reg" style="padding-top: 35px;">
            <pre>
              <img src="images\bjp.jpg" height="70px" width="70px"/><%=a[2]%>

              <img src="images\congrace.png" height="70px" width="70px"/><%=a[0]%>

              <img src="images\Aap.jpg" height="70px" width="70px"/><%=a[1]%>
            </pre>
             
        </div>
        
     
  
    </div>
   
    
   
  <%@ include file="footer.jsp"%>  

</body>


</html> 