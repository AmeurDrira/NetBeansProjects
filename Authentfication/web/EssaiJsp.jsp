<%-- 
    Document   : EssaiJsp
    Created on : 11 mars 2016, 10:54:48
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
        <ul>
            <li> current time :<%=new java.util.Date()%>
            <li> your hostname:<%= request.getRemoteHost() %></li>
            <li> your session ID:<%=session.getId() %></li>
            <li>the <code>testParam</code>
                form parameter:<%=request.getParameter("testparam")%>
        </ul>
    </body>
</html>
