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
    <style>
        .cl2 {
            color: crimson;
        }
    </style>
    <body>
        <h1>Ajouter Compte</h1>
        
            
            
           
            
            
        <html:form action="/NouveauCompte"><pre>
            <h1> Numero de compte :  <html:text property="idCompte"  name="CompteForm" /> </h1>
               <div class="cl2"><html:errors property="error.date"/></div>
              <h1> Date de création :  <html:text property="dateCreation"  name="CompteForm" /> </h1>
              <h1>    Solde : <html:text property="solde" name="CompteForm"/> </h1>
             
            <h1> Code Client :       <html:text property="idClient" name="CompteForm"/> </h1> 
    
            
           
                   
                    
                 <html:submit value="valider"/> <html:reset value="vider"/>
       </pre> </html:form>
          <html:link href="index.jsp">Acceuil</html:link>
        
</html>
