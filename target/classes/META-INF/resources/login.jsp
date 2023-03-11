<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Page d'authentification</title>
</head>
<body>

<%
    if (request.getParameter("result") != null) {
        if (request.getParameter("result").equals("invalid")) {
            out.println("<b>Identifiants invalides</b><br/><br/>");
        } else if (request.getParameter("result").equals("disconnect")) {
            out.println("<b>Vous avez été déconnecté</b><br/><br/>");
        }
    }
%>

<form action="LoginServlet" method="POST">
    Pseudo : <input type="text" name="pseudo"/><br/>
    Passowrd : <input type="password" name="password"/><br/>
    <button type="submit">Connexion</button>
</form>

<a href="index.html">Retour</a>
</body>
</html>