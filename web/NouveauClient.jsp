<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nouveau Client</title>
    </head>
    <style>
        .cl1{
            color: darkviolet;
        }
    </style>
    <body>
        <h1>Créer un nouveau client</h1>
        <html:form action="/NouveauClient">
            <div class="cl1"><html:errors property="name"/></div>
            <h1>  Code Client : <html:text property="codeClient" name="ClientForm"/> </h1>
            <h1>  Nom Client :  <html:text property="nomClient"  name="ClientForm" /> <h1>
                    <h1>
                        Adresse Client : <html:text property="adresseClient" name="ClientForm"/>
                    </h1>
                 <html:submit value="valider"/> <html:reset value="vider"/>
        </html:form>
                      <html:link href="index.jsp">Acceuil</html:link>
                       
    </body>
</html>
