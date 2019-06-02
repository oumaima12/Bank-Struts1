
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
        <h1>Liste des clients</h1>
        
        <div>
            <table border="1">
                <tr><th>Code Client</th><th>Nom Client</th><th>Adresse Client</th></tr>
                
                    <tr>
                        <td><bean:write name="ClientForm" property="codeClient"/></td>
                        <td><bean:write name="ClientForm" property="nomClient"/></td>
                        <td><bean:write name="ClientForm" property="adresseClient"/></td>
                    </tr>
                
            </table>
                        <html:link href="index.jsp">Acceuil</html:link></div>
        </div>
    </body>
</html>
