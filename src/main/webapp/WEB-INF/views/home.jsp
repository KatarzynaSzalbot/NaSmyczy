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
<body class="home">
<div class="container">
    <audio controls autoplay>
        <source src="https://www.w3schools.com/tags/horse.ogg" type="audio/ogg">
        <source src="https://www.w3schools.com/tags/horse.mp3" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>
    <h1>NA SMYCZY</h1>

    <p>Tutajscnskcnskjdbc będzie tekst</p>

</div>
<footer class="footer sticky-bottom">
    <div class="container">
        <div class="row">

            <div class="col-md-12">

                <div class="card1">
                    <div class="div1">
                        Jestem właścicielem psa
                    </div>
                    <a href="/login" class="btn btn-info">Zaloguj się</a>
                    <a href="/formdogowner/add" class="btn btn-success">Zarejestruj się</a>

                </div>
                <div class="card2">
                    <div class="div1">
                        Chcę wyprowadzić psa

                    </div>
                    <a href="/login" class="btn btn-primary">Zaloguj się</a>
                    <a href="/formdogfriend/add" class="btn btn-secondary">Zarejestruj się</a>

                </div>
            </div>
        </div>
</footer>
</body>
</html>
