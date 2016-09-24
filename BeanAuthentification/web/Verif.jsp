<%-- 
    Document   : Verif
    Created on : 14 avr. 2016, 10:25:29
    Author     : ameur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:useBean id="user1" class="tn.iit.bean.User" scope="session"/>
    <jsp:setProperty name="user1" property="*" />
    <body>
        <h1>Page Verif </h1>
        <form    action="Save"   method="get">
            <table border=0>
                <tr><td>Nom   : </td><td>  <jsp:getProperty name="user1" property="nom" /></td></tr>
                <tr><td>Prenom : </td><td> <jsp:getProperty name="user1" property="prenom" /></td></tr>
                <tr><td>Login   : </td><td>  <jsp:getProperty name="user1" property="login" /></td></tr>
                <tr><td>Password : </td><td> <jsp:getProperty name="user1" property="password" /></td></tr>
                <tr><td>Age   : </td><td>  <jsp:getProperty name="user1" property="age" /></td></tr>
                <tr><td>Tel : </td><td> <jsp:getProperty name="user1" property="tel" /></td></tr>

            </table>
            <input type="submit" value="Valider">
        </form>
    </body>
</html>
