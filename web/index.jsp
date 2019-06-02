<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<html:html>
    <link href="https://fonts.googleapis.com/css?family=Sedgwick+Ave&display=swap" rel="stylesheet">
    <head>
        <title>Bank</title>
    </head>
    <style>
        *{
	margin: 0;
	padding: 0;
	font-family: 'Rubik', sans-serif;
        }
        header{
	background-image: linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3)), url(wall.jpg);
	height: 100vh;
	background-size: cover;
	background-position: center;
        }
        ul{
	list-style-type: none;
	float: left;
        padding-left: 20px;
	margin-top: 50px;
        }
        .logo{
          padding-left: 20px;
          padding-top: 20px;
        }
        
        .title{
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%,-50%);
        color: black;
	font-size: 15px;
	font-family: monospace; 
}

    </style>
<body>
    <header>
    <div class="main">
        <div class="logo">
            <html:img src="logo1.png"/>
        </div>
        <ul>
    <li><html:link href="NouveauClient.jsp">Ajouter Client</html:link> </li>
      <li><html:link href="NouveauCompte.jsp">Ajouter Compte</html:link> </li>
      <li><html:link href="AjouterOperation.jsp">Ajouter Operation</html:link> </li>
      <li><html:link href="AffichageClients.jsp">Afficher Client</html:link> </li>
      </ul>
      <div class="title">
          <h1>Gestion des banques</h1>
      </div>
    </div>
    </header>
</body>
   
</html:html>
