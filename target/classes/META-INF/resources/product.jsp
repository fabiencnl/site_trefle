<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Produit</title>
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
                    <a class="button" style="height:fit-content" href="CartServlet?productId=${selectedProduct.idProduct}&name=${sessionScope.client.pseudo}">Ajouter au panier</a>
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
                        AUTRE VERSION DU FILM

                        <table style="width:100%">
                            <tr>
                                <th></th>
                                <th>Type</th>
                                <th>Title</th>
                                <th>Director</th>
                                <th>Price</th>
                                <th>Quantité</th>
                            </tr>

                            <c:forEach var="p" items="${sameMovie}">
                                <tr>
                                        <td><a href="ProductServlet?productId=${p.idProduct}">Voir Produit</a></td>
                                        <td>${p.support}</td>
                                        <td>${p.title}</td>
                                        <td>${p.directorName}</td>
                                        <td>${p.price}</td>
                                        <td>${p.quantity}</td>
                                </tr>
                            </c:forEach>
                        </table>
                    </c:when>
                </c:choose>

                <c:choose>
                    <c:when test="${! empty sameDirector}">
                        AUTRE FILMS DE ${selectedProduct.directorName}

                        <table style="width:100%">
                            <tr>
                                <th></th>
                                <th>Type</th>
                                <th>Title</th>
                                <th>Director</th>
                                <th>Price</th>
                                <th>Quantité</th>
                            </tr>

                            <c:forEach var="p" items="${sameDirector}">
                                <tr>
                                    <td><a href="ProductServlet?productId=${p.idProduct}">Voir Produit</a></td>
                                    <td>${p.support}</td>
                                    <td>${p.title}</td>
                                    <td>${p.directorName}</td>
                                    <td>${p.price}</td>
                                    <td>${p.quantity}</td>
                                </tr>
                            </c:forEach>
                        </table>
                    </c:when>
                </c:choose>

                <c:choose>
                    <c:when test="${! empty sameYear}">
                        AUTRES FILMS DE L'ANNEE  ${selectedProduct.release}
                        <table style="width:100%">
                            <tr>
                                <th></th>
                                <th>Type</th>
                                <th>Title</th>
                                <th>Director</th>
                                <th>Price</th>
                                <th>Quantité</th>
                            </tr>

                            <c:forEach var="p" items="${sameYear}">
                                <tr>
                                    <td><a href="ProductServlet?productId=${p.idProduct}">Voir Produit</a></td>
                                    <td>${p.support}</td>
                                    <td>${p.title}</td>
                                    <td>${p.directorName}</td>
                                    <td>${p.price}</td>
                                    <td>${p.quantity}</td>
                                </tr>
                            </c:forEach>
                        </table>
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