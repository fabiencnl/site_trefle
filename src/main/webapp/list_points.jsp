<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>La liste des points dans la base</title>
    </head>
    <body>
        <h1>Liste des points :</h1>
        <ul>
            <c:forEach var="p" items="${points}">
                <li>(<b><c:out value="${p.x}"/></b>,
                     <b><c:out value="${p.y}"/></b>)</li>
            </c:forEach>
        </ul>
        <a href="index.html">Retour</a>
        <a href="DeleteDuplicatesServlet">Retirer les doublons</a>
    </body>
</html>