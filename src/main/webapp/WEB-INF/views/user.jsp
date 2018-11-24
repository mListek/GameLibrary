<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 23.10.18
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <title>Add user</title>
</head>
<body>
<nav class="navbar navbar-dark bg-dark">
    <div class="navbar-expand">
        <ul class="nav navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="http://localhost:8080/home">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="http://localhost:8080/game/list">Game list</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="http://localhost:8080/logout">Log out</a>
            </li>
        </ul>
    </div>
</nav>
<h3>Add new user:</h3>
<form:form method="post" modelAttribute="user">

    <label for="usernameId"> Profile name:</label>
    <form:input path="username" id="usernameId" placeholder="Username"/>
    <form:errors path="username"/><br>

    <label for="loginId"> Login:</label>
    <form:input path="login" id="loginId" placeholder="Login"/>
    <form:errors path="login"/><br>

    <label for="passwordId"> Password:</label>
    <form:input type="password" path="password" id="passwordId" placeholder="Password"/>
    <form:errors path="password"/><br>

    <input type="submit" value="Submit">
</form:form>

<c:if test="${loginFailed == true}">
    <div class="error">This login alredy exists</div>
</c:if>
</body>
</html>
