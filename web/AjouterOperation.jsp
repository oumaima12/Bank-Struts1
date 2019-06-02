<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajouter Opération </title>
    </head>
    <style>
        .cl1{
            color: blueviolet;
        }
    </style>
    <body>
        <h1>Ajouter un opération de retrait ou de versement</h1>
        <html:form action="/AjouterOperationAction">
            <pre>
           
            <h1>  Code opération : <html:text property="idOperation" name="OperationForm"/> </h1>

                <div class="cl1"><html:errors property="error.date"/></div>
            <h1>  Date de création :  <html:text property="dateCreation"  name="OperationForm" /> <h1>
                    
                    <h1> Montant : <html:text property="montant" name="OperationForm"/></h1>
                    
                    <div class="cl1"><html:errors property="error.type"/></div>
                       <h1> Type de mouvement : <html:text property="type" name="OperationForm"/></h1>
                       
                    <h1> Code du compte : <html:text property="idCompte" name="OperationForm"/></h1>
                 <html:submit value="valider"/> <html:reset value="vider"/>
        </html:form>
                      <html:link href="index.jsp">Acceuil</html:link>


            </pre>
            
        </form>
    </body>
</html>
