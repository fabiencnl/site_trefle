<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>La liste des produits dans la base</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/main_page.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<header>
    <h1> Le site du Trèfles </h1>
    <nav>
        <ul>
            <li><a href="index.html">Nos produits</a></li>
            <li><a href="Behavior.html">Behavior</a></li>
            <li><a href="Sociability.html">sociability</a></li>
            <li> <a href="Communication.html">communication</a></li>
            <li> <a href="CartServlet?name=${sessionScope.client.pseudo}">Panier
                <i class="fa fa-shopping-cart"></i>
            </a></li>
        </ul>
    </nav>
</header>

<br/><br/><br/>

<jsp:include page="banner.jsp">
    <jsp:param name="pseudo" value ="${sessionScope.client.pseudo}"/>
</jsp:include>

<c:choose>
<c:when test="${! empty sessionScope.client}">
    <i style="font-size:x-large">Content de vous revoir, <b>${sessionScope.client.pseudo}</b></i>
    <a href="LogoutServlet">Se déconnecter</a>
</c:when>
</c:choose>

<h1>Nos produits :</h1>
<br/>

<form method="get" action="MainPageServlet">
    Recherche (titre, réalisateur) <input  name="searchValue">
    <button type="submit">Rechercher</button>
</form>

<div>
<span class="noProductFound"></span>
</div>

<div id="columns" >
    <jsp:useBean id="products" scope="request" type="java.util.List"/>
    <c:choose>
        <c:when test="${! empty products}">
            <c:forEach var="p" items="${products}">
                <figure class="element"

                    <c:choose>
                        <c:when test="${p.quantity==0}">
                            style="background:#db143080;"
                        </c:when>
                        <c:when test="${p.support=='DVD'}">
                            style="background:#9d8d8d80;"
                        </c:when>
                        <c:when test="${p.support=='BR'}">
                            style="background:#2f369380;"
                        </c:when>
                        <c:when test="${p.support=='CB'}">
                            style="background:#89c16380;"
                        </c:when>
                    </c:choose>
                >

                    <a href="ProductServlet?productId=${p.idProduct}">
                        <img src= "https://www.themoviedb.org/t/p/w94_and_h141_bestv2/${p.posterPath}" alt="product">
                    </a>
                    <figcaption class="elementTitle">
                        <p>${p.title}</p>
                        <p>${p.support}</p>
                        <p>${p.directorName}</p>

                        <c:choose>
                            <c:when test="${p.quantity==0}">
                                <p>RUPTURE DE STOCK</p>
                            </c:when>
                            <c:when test="${p.quantity==1}">
                                <p>DERNIER EXEMPLAIRE</p>
                            </c:when>
                            <c:otherwise>
                                <p>Restant : ${p.quantity}</p>
                            </c:otherwise>
                        </c:choose>

                        <p class="price">${p.price} €</p>
                    </figcaption>
                    <a class="buy" href="#"></a>
                </figure>
            </c:forEach>
        </c:when>
        <c:otherwise><span>Aucun produit trouvé</span></c:otherwise>
    </c:choose>
</div>

<c:set var="previous" value="${from-16}"></c:set>
<c:set var="next" value="${from+16}"></c:set>
<c:set var="searchValue" value="${searchValue}"></c:set>

<div style="display:flex;place-content: center">
<a id="previousButton" class="button" href="MainPageServlet?from=${previous}&searchValue=${searchValue}">Précédent</a>
<a id="nextButton" class="button" href="MainPageServlet?from=${next}&searchValue=${searchValue}">Suivant</a>
</div>

<footer>
    <nav>
        <ul>
            <li><a href="Home.html">home</a></li>
            <li><a href="Behavior.html">Behavior</a></li>
            <li><a href="Sociability.html">sociability</a></li>
            <li> <a href="Communication.html">communication</a></li>
        </ul>
    </nav>
</footer>

<script>
    //Cache le bouton Précédent quand on est à la 1ere page, cache le bouton Suivant quand le nombre de produits affichés est < au nombre de produits max (ne marchera pas s'il y a pile le max affichés mais ça fait l'affaire)
    window.onload = function() {
        const previousButton = ${previous};
        const displayedItems = document.getElementsByClassName("element");

        document.getElementById("previousButton").style.display = previousButton < 0 ? "none" : "";
        document.getElementById("nextButton").style.display = displayedItems.length < 16 ? "none" : "";
    };
</script>
</body>
</html>