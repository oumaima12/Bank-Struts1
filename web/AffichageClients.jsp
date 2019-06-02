<%-- 
    Document   : ListeClients
    Created on : 24 mai 2019, 23:59:52
    Author     : OUMAIMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="/WEB-INF/struts-bean.tld"  prefix="bean"%>
<%@taglib  uri="/WEB-INF/struts-html.tld"  prefix="html"%>
<%@taglib  uri="/WEB-INF/struts-logic.tld"  prefix="logic"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>La Liste des Clients</h1>
        <div>
         <table border="2">
             <tr><th>Code client</th><th>Nom client</th><th>Adresse client</th></tr>
                     <logic:iterate id="clt" name="aff" type="Bean.Client">
           
                 <tr>
                     <td><bean:write name="clt" property="codeClient"/></td>
                     <td><bean:write name="clt" property="nomClient"/></td>
                     <td><bean:write name="clt" property="adresseClient"/></td>
                 </tr>
                </logic:iterate>
             
         </table>
        </div>
        <h1><html:link href="index.jsp">Acceuil</html:link> </h1>
    </body>
</html>
