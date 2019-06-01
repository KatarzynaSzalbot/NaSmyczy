<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Kasia
  Date: 2019-05-28
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rejestracja dla właściciela psa</title>
</head>
<body>
<img src="Chow_chow.jpg" alt="Tu jest obrazek zastępczy">
<br/>
<form:form method="post" modelAttribute="dogFriendM">
    <label for="firstNameId">Imię:</label>
    <form:input type="text" path="firstName" id="firstNameId"/>
    <br/><br/>

    <label for="lastNameId">Nazwisko:</label>
    <form:input type="text" path="lastName" id="lastNameId"/><br/><br/>

    <label for="loginId">Login:</label>
    <form:input type="text" path="login" id="loginId"/><br/><br/>

    <label for="emailId">Email:</label>
    <form:input type="text" path="email" id="emailId"/><br/><br/>

    <label for="maleId">Mężczyzna:</label>
    <form:radiobutton path="gender" value="M" id="maleId"/>
    <label for="femaleId">Kobieta:</label>
    <form:radiobutton path="gender" value="F" id="femaleId"/><br/><br/>

    <label for="cityId">Miasto:</label>
    <form:input type="text" path="city" id="cityId"/><br/><br/>



    <a href="/offers/add">Zapisz</a>
</form:form>
</body>
</html>
