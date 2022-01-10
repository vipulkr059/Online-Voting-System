<%-- 
    Document   : logout
    Created on : Sep 29, 2016, 3:55:07 PM
    Author     : Oops
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%session.invalidate();
         response.sendRedirect("index.jsp");
        %>
    </body>
</html>
