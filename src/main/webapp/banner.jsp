<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/main_page.css">
</head>
<body>

<c:if test="${! empty sessionScope.client}">
<div>
    <b><c:out value="${sessionScope.client.pseudo}"/></b>
    <a href="LogoutServlet">Se déconnecter</a>
</div>
</c:if>

<c:if test="${empty sessionScope.client}">
    <div>
        <form class="machin" action="LoginServlet" method="POST">
            Pseudo : <input type="text" name="pseudo"/><br/>
            Password : <input type="password" name="password"/><br/>
            <button type="submit">Connexion</button>
        </form>
    </div>
</c:if>


<%
    if (request.getParameter("result") != null) {
        if (request.getParameter("result").equals("invalid")) {
            out.println("<b>Identifiants invalides</b><br/><br/>");
        } else if (request.getParameter("result").equals("disconnect")) {
            out.println("<b>Vous avez été déconnecté</b><br/><br/>");
        }
    }
%>

</body>
</html>