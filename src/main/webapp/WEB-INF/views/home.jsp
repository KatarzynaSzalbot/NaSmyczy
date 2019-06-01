<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Kasia
  Date: 2019-05-28
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Witaj na stronie "Na smyczy"</title>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
</head>
<body>
<div class="container">
    <audio controls autoplay>
        <source src="https://www.w3schools.com/tags/horse.ogg" type="audio/ogg">
        <source src="https://www.w3schools.com/tags/horse.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>
<h1>NA SMYCZY</h1>

<p>Tutaj będzie tekst</p>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
<div class="card">
<input value="Jestem właścicielem psa">
</div>
<a href="/offers/add"class="btn btn-info">Zaloguj się</a>
<a href="/formdogowner/add"class="btn btn-success">Zarejestruj się</a>
    <div class="card">
<input value="Chcę wyprowadzić psa">
    </div>
<input type="submit" class="btn btn-primary" value="Zaloguj się">
<a href="/formdogfriend/add" class="btn btn-secondary">Zarejestruj się</a>

</div>
</body>
</html>
