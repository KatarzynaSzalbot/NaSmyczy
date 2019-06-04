<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Kasia
  Date: 2019-05-30
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tutaj możesz znaleźć psa</title>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
</head>
<body class="bufor">

<form method="post">
     <div class="oferta">
    <label for="dateId">Wpisz teraz kiedy chciałbyś wyprowadzić psa:</label>
    <input type="date" name="date" id="dateId"/>

    <input type="submit" value="Szukaj" class="btn btn-info">
     </div>
</form>

    <p>Oto Twoje możliwości wyprowadzenia psa:</p>
    <div class="bufor1">
        <c:forEach items="${offers}" var="offer">
        <tr>
            <td>${offer.date}</td>
            <td>Wiadomość:${offer.message}</td>

        </tr>
    </c:forEach>
    </div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<p class="koniec">Po wybraniu przez Ciebie psa, zadzwoń do Właściciela i ciesz się spacerem:):)</p>

</body>
</html>
