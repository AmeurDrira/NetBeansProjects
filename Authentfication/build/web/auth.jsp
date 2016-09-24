<%-- 
    Document   : auth
    Created on : 17 mars 2016, 09:28:37
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
        <h3><% Integer c = (Integer) session.getAttribute( "n" ); %></h3>
       
        <% if(c != null)
        { %>
        C'est votre tentative numéro <%=c%>
        <%}%>
        
        <form    action="Authentifier"   method="get">
        
        <table border=0>
        <tr><td>Nom   : </td><td>  <input type="text"  name="nom" size=15></td></tr>
        <tr><td>Prenom : </td><td> <input type="text"  name="prenom" size=15 ></td></tr>

        </table>
                

<input type="submit" value="Valider">
<input type="reset"  VALUE="Annuler">
</form>
    </body>
</html>
