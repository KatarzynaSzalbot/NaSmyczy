<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
</head>
<body>

<br/>
<div class="container">

    <header>Rejestracja</header>
    <div class="card">

            <a href="/" class="btn btn-primary">Back</a>


    </div>
    <br>
    <div class="card-body">
<form:form method="post" modelAttribute="dogOwnerM">
    <div class="row>">
    <div class="form-group">
    <label for="firstNameId">Imię:</label>
    <form:input type="text" path="firstName" id="firstNameId" class="form=control"/>
    </div>
    <div class="form-group">
    <label for="lastNameId">Nazwisko:</label>
    <form:input type="text" path="lastName" id="lastNameId" class="form=control"/><br/><br/>
    </div>
    <label for="loginId">Login:</label>
    <form:input type="text" path="login" id="loginId"/><br/><br/>

    <label for="emailId">Email:</label>
    <form:input type="text" path="email" id="emailId"/><br/><br/>
    </div>
    <label for="maleId">Mężczyzna:</label>
    <form:radiobutton path="gender" value="M" id="maleId"/>
    <label for="femaleId">Kobieta:</label>
    <form:radiobutton path="gender" value="F" id="femaleId"/><br/><br/>

    <label for="cityId">Miasto:</label>
    <form:input type="text" path="city" id="cityId"/><br/><br/>

    <label for="dogId">Imię psa:</label>
    <form:input type="text" path="dogName" id="dogId"/><br/><br/>

    <label for="dogBreedId">Rasa psa:</label>
    <form:input type="text" path="dogBreed" id="dogBreedId"/><br/><br/>

    <label for="sizeId">Mały:</label>
    <form:radiobutton path="size" value="SMALL" id="sizeId"/>
    <label for="sizeId">średni:</label>
    <form:radiobutton path="size" value="MIDDLE" id="sizeId"/>
    <label for="sizeId">Duży:</label>
    <form:radiobutton path="size" value="BIG" id="sizeId"/>
    <br/><br/>

    <input type="submit" value="Zapisz">
</form:form>
    </div>
</div>
</body>
</html>
