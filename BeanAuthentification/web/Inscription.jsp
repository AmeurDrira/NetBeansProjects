<%-- 
    Document   : Inscription
    Created on : 14 avr. 2016, 10:22:57
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
        <h1>Inscription</h1>
        
        <form    action="Verif.jsp"   method="get">
        
        <table border=0>
        <tr><td>Nom   : </td><td>  <input type="text"  name="nom" size=15></td></tr>
        <tr><td>Prenom : </td><td> <input type="text"  name="prenom" size=15 ></td></tr>
        <tr><td>Login   : </td><td>  <input type="text"  name="login" size=15></td></tr>
        <tr><td>Password : </td><td> <input type="text"  name="password" size=15 ></td></tr>
        <tr><td>Age   : </td><td>  <input type="text"  name="age" size=15></td></tr>
        <tr><td>Tel : </td><td> <input type="text"  name="tel" size=15 ></td></tr>

        </table>
                

<input type="submit" value="Valider">
<input type="reset"  VALUE="Annuler">
</form>
    </body>
</html>
