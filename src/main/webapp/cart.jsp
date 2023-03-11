<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Panier</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/cart.css">
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

<jsp:useBean id="cartProducts" scope="request" type="java.util.List"/>
<c:choose>
<c:when test="${! empty cartProducts}">
<div class="shopping-cart">
    <!-- Title -->
    <div class="title">
        Votre panier
    </div>

    <c:forEach var="c" items="${cartProducts}">

    <!-- Product #1 -->
    <div class="item">
        <div class="buttons">
            <button class="delete-btn" type="button" name="button">
                <i class="fa fa-times"></i>
            </button>
        </div>

        <figure>
            <a href="ProductServlet?productId=${c.idProduct}"></a>
            <img src= "https://www.themoviedb.org/t/p/w94_and_h141_bestv2/${c.posterPath}" alt="product"/>
            <figcaption>${c.title} (${c.support})</figcaption>
        </figure>

        <div class="quantity">
            <button class="plus-btn" type="button" name="button">
                <i class="fa fa-plus"></i>
            </button>
            <input type="text" name="name" value="${c.productQuantities}">
            <button class="minus-btn" type="button" name="button">
                <i class="fa fa-minus"></i>
            </button>
        </div>
        <div class="total-price">$549</div>
    </div>
    </c:forEach>
</div>
    </c:when>
    </c:choose>

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