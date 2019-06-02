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
        <h1>Operation Ajoutée</h1>
         <div>
            <table border="1">
                <tr><th>Code opération</th><th>Date de création </th><th>Montant</th><th>Type de mouvement </th><th>Code compte</th></tr>
                
                    <tr>
                        <td><bean:write name="OperationForm" property="idOperation"/></td>
                        <td><bean:write name="OperationForm" property="dateCreation"/></td>
                          <td><bean:write name="OperationForm" property="montant"/></td>
                         <td><bean:write name="OperationForm" property="type"/></td>
                        <td><bean:write name="OperationForm" property="idCompte"/></td>
                    </tr>
                
            </table>
                        <html:link href="index.jsp">Acceuil</html:link></div>
                        
        </div>
    </body>
</html>
