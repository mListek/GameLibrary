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
                <a class="nav-link" href="http://localhost:8080/">Back to Login</a>
            </li>
        </ul>
    </div>
</nav>
<h3 class="text-info mx-sm-3">Add new user:</h3>
<form:form method="post" modelAttribute="user">

    <div class="form-group mx-sm-3 col-4">
        <label for="usernameId" class="text-info"> Profile name:</label>
        <form:input path="username" cssClass="form-control" id="usernameId" placeholder="Username"/>
        <form:errors cssClass="text-danger" path="username"/><br>
    </div>

    <div class="form-group mx-sm-3 col-4">
        <label for="loginId" class="text-info"> Login:</label>
        <form:input path="login" cssClass="form-control" id="loginId" placeholder="Login"/>
        <form:errors cssClass="text-danger" path="login"/><br>
    </div>

    <div class="form-group mx-sm-3 col-4">
        <label for="passwordId" class="text-info"> Password:</label>
        <form:input type="password" cssClass="form-control" path="password" id="passwordId" placeholder="Password"/>
        <form:errors cssClass="text-danger" path="password"/><br>
    </div>

    <div class="form-group mx-sm-3">
        <input type="submit" class="btn btn-info" value="Submit">
    </div>
</form:form>

<c:if test="${loginFailed == true}">
    <div class="error text-danger">This login alredy exists!</div>
</c:if>
</body>
</html>
