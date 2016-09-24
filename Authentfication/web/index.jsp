<%-- 
    Document   : index
    Created on : 6 avr. 2016, 20:06:29
    Author     : ameur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>    
    <%
    if(! "oui".equals(session.getAttribute("autoriser")))
    {
       response.sendRedirect("Authentifier"); 
    }
    %>
    <body>
        <h1>Hello World!</h1>
        <div><h1>BRAVO cher ami</h1></div>
    </body>
</html>
