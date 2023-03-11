<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
    <title>Produit</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/main_page.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/table.css">
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
            <li><a href="Communication.html">communication</a></li>
            <li><a href="CartServlet?name=${sessionScope.client.pseudo}">Panier
                <i class="fa fa-shopping-cart"></i>
            </a></li>
        </ul>
    </nav>
</header>

<br/><br/><br/>
<br/><br/><br/>

<div id="product">
    <jsp:useBean id="sameMovie" scope="request" type="java.util.List"/>
    <jsp:useBean id="sameDirector" scope="request" type="java.util.List"/>
    <jsp:useBean id="sameYear" scope="request" type="java.util.List"/>
    <jsp:useBean id="selectedProduct" scope="request" type="miage.ter.trefle.model.Product"/>

    <c:choose>
        <c:when test="${! empty selectedProduct}">

            <div id="info">
                <div id="image" style="display:flex">
                    <img src="https://www.themoviedb.org/t/p/w94_and_h141_bestv2/${selectedProduct.posterPath}"
                         alt="product">
                    <c:choose>
                        <c:when test="${selectedProduct.quantity > 0}">
                            <a class="button" style="height:fit-content" href="CartServlet?productId=${selectedProduct.idProduct}&name=${sessionScope.client.pseudo}">Ajouter au panier</a>
                        </c:when>
                    </c:choose>
                </div>
                <div id="details">
                    <div>
                            ${selectedProduct.title}
                    </div>
                    <div>
                            ${selectedProduct.directorName}
                    </div>
                    <div>
                            ${selectedProduct.runtime}
                            ${selectedProduct.release}
                    </div>
                    <div>
                            ${selectedProduct.overview}
                    </div>
                    <div>
                            ${selectedProduct.originalLanguage}
                    </div>
                </div>
            </div>
            <div id="purchase">
                    ${selectedProduct.support}
                    ${selectedProduct.price}
                    ${selectedProduct.quantity}
            </div>

            <div id="others">

                <c:choose>
                    <c:when test="${! empty sameMovie}">

                    <div class="container">
                        <h2>AUTRE VERSION DU FILM</h2>

                        <ul class="responsive-table">
                            <li class="table-header">
                                <div class="col col-1">Lien</div>
                                <div class="col col-2">Type</div>
                                <div class="col col-3">Title</div>
                                <div class="col col-4">Director</div>
                                <div class="col col-5">Price</div>
                                <div class="col col-6">Quantité</div>
                            </li>

                            <c:forEach var="p" items="${sameMovie}">
                            <li class="table-row">
                                <div class="col col-1" data-label="Lien"><a href="ProductServlet?productId=${p.idProduct}">Voir</a></div>
                                <div class="col col-2" data-label="Type">${p.support}</div>
                                <div class="col col-3" data-label="Title">${p.title}</div>
                                <div class="col col-4" data-label="Director">${p.directorName}</div>
                                <div class="col col-5" data-label="Price">${p.price}</div>
                                <div class="col col-6" data-label="Quantité">${p.quantity}</div>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                    </c:when>
                </c:choose>

                <c:choose>
                    <c:when test="${! empty sameDirector}">
                        <div class="container">
                            <h2> AUTRES FILMS DE ${fn:toUpperCase(selectedProduct.directorName)}</h2>

                            <ul class="responsive-table">
                                <li class="table-header">
                                    <div class="col col-1">Lien</div>
                                    <div class="col col-2">Type</div>
                                    <div class="col col-3">Title</div>
                                    <div class="col col-4">Director</div>
                                    <div class="col col-5">Price</div>
                                    <div class="col col-6">Quantité</div>
                                </li>

                                <c:forEach var="p" items="${sameDirector}">
                                    <li class="table-row">
                                        <div class="col col-1" data-label="Lien"><a href="ProductServlet?productId=${p.idProduct}">Voir</a></div>
                                        <div class="col col-2" data-label="Type">${p.support}</div>
                                        <div class="col col-3" data-label="Title">${p.title}</div>
                                        <div class="col col-4" data-label="Director">${p.directorName}</div>
                                        <div class="col col-5" data-label="Price">${p.price}</div>
                                        <div class="col col-6" data-label="Quantité">${p.quantity}</div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>

                    </c:when>
                </c:choose>

                <c:choose>
                    <c:when test="${! empty sameYear}">
                        <div class="container">
                            <h2> AUTRES FILMS DE L'ANNEE  ${fn:substring(selectedProduct.release, 0, 4)}</h2>

                            <ul class="responsive-table">
                                <li class="table-header">
                                    <div class="col col-1">Lien</div>
                                    <div class="col col-2">Type</div>
                                    <div class="col col-3">Title</div>
                                    <div class="col col-4">Director</div>
                                    <div class="col col-5">Price</div>
                                    <div class="col col-6">Quantité</div>
                                </li>

                                <c:forEach var="p" items="${sameYear}">
                                    <li class="table-row">
                                        <div class="col col-1" data-label="Lien"><a href="ProductServlet?productId=${p.idProduct}">Voir</a></div>
                                        <div class="col col-2" data-label="Type">${p.support}</div>
                                        <div class="col col-3" data-label="Title">${p.title}</div>
                                        <div class="col col-4" data-label="Director">${p.directorName}</div>
                                        <div class="col col-5" data-label="Price">${p.price}</div>
                                        <div class="col col-6" data-label="Quantité">${p.quantity}</div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </c:when>
                </c:choose>
            </div>
        </c:when>
        <c:otherwise><span>Aucun produit trouvé</span></c:otherwise>
    </c:choose>
</div>

<footer>
    <nav>
        <ul>
            <li><a href="Home.html">home</a></li>
            <li><a href="Behavior.html">Behavior</a></li>
            <li><a href="Sociability.html">sociability</a></li>
            <li><a href="Communication.html">communication</a></li>
        </ul>
    </nav>
</footer>
</body>
</html>