<%-- 
    Document   : EssaiJspColor
    Created on : 11 mars 2016, 11:13:25
    Author     : ameur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%
            
            String bgColor= request.getParameter("bgColor");
           
            boolean hasExplicitColor;
            if (bgColor!= null) {
            hasExplicitColor= true;
            }
            else{
            hasExplicitColor= false;
            bgColor= "WHITE";
            }
            %>
        <title>JSP Page</title>
    </head>
    <BODY BGCOLOR="<%= bgColor%>">
<H2 ALIGN="CENTER">ColorTesting</H2>
        <% if (hasExplicitColor) {
        out.println("vous avez choisi la couleur  " + bgColor);
        }
        else{
        out.println("la couleur blanche est choisie par défaut ") ;
        }
        %>
</html>
