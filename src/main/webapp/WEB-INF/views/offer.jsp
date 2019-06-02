<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Kasia
  Date: 2019-05-29
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
</head>
<body class="offer">
<h1>Tutaj możesz zostawić swoją wiadomość o możliwości wyprowadzenia Twojego psa</h1>
<div class="container">
    <div class="card-body">
<form:form method="post" modelAttribute="offerM">

<label for="offerId">Wiadomość:</label>
<form:textarea rows="3" cols="60" path="message" id="offerId"/>
<br>

<label for="dateId">Data:</label>
 <form:input type="date" rows="3" cols="20" path="date" id="dateId"/>

<label for="timeId">Na jak długo(w minutach)</label>
    <form:input type="number" path="time" id="timeId"/>
<br><br>
    <input type="submit" value="Dodaj">

</form:form>
    </div>
</div>
</body>
</html>
