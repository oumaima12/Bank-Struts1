<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Affichage compte</h1>
        
        <div>
            <table border="1">
                <tr><th>Numero compte</th><th>Solde</th><th>Numéro du client</th><th>Date de création</th></tr>
                
                    <tr>
                        <td><bean:write name="CompteForm" property="idCompte"/></td>
                        <td><bean:write name="CompteForm" property="solde"/></td>
                          <td><bean:write name="CompteForm" property="idClient"/></td>
                         <td><bean:write name="CompteForm" property="dateCreation"/></td>
                        
                    </tr>
                
            </table>
                        <html:link href="index.jsp">Acceuil</html:link></div>
                        
        </div>
    </body>
</html>
