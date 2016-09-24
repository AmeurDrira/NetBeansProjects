<%-- 
    Document   : FirstJsp
    Created on : 17 mars 2016, 09:15:30
    Author     : ameur
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
         <%! private int accesscount= 0 ; %>
         <h2><%=++accesscount %></h2
    </body>
</html>
