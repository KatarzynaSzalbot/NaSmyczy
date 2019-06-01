<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
</head>
<body>
<h1>Tutaj możesz zostawić swoją wiadomość o możliwości wyprowadzenia Twojego psa</h1>

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
</body>
</html>
