<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 23.10.18
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <title>Add game</title>
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
<h3 class="text-info mx-sm-3">Add new game:</h3>
<form:form method="post" modelAttribute="game">

    <div class="form-group mx-sm-3 col-4">
        <label for="titleId" class="text-info"> Title:</label>
        <form:input path="title" cssClass="form-control" id="titleId" placeholder="Game title"/>
        <form:errors cssClass="text-danger" path="title"/><br>
    </div>
    <div class="form-group mx-sm-3 col-5">
        <label for="descriptionId" class="text-info"> Description:</label>
        <form:textarea rows="6" path="description" cssClass="form-control" id="descriptionId"
                       placeholder="Description"/>
    </div>
    <div class="form-group mx-sm-3">
        <input type="submit" class="btn btn-info" value="Submit">
    </div>
</form:form>

<c:if test="${gameFailed == true}">
    <div class="error">This game alredy exists</div>
</c:if>
</body>
</html>
