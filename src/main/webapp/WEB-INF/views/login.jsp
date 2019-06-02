<%--
  Created by IntelliJ IDEA.
  User: Kasia
  Date: 2019-06-02
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Tutaj możesz się zalogować</title>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
</head>
<body class="login">

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

<div class="container">

    <form method="post">

        <header>Tutaj możesz się zalogować</header>




                    <label for="loginId">Login:</label>
                    <input type="text" name="login" id="loginId" class="form-control">



                    <label for="passwordId">Hasło:</label>
                    <input type="password" name="password" id="passwordId" class="form-control">


                <c:if test="${isLogged == false}">
                    <div class="error">Login failed</div>
                    <br><br>
                </c:if>

                <input type="submit" value="Zaloguj się" class="btn btn-info">
                <a href="/formdogowner/add" class="btn btn-success">Register</a>



    </form>

</div>
</body>
</html>
