<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 25.10.18
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <title>Game profile</title>
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

<h3 class="text-info mx-sm-3">${game.title}</h3>
<hr>
<div class="text-info mx-sm-3">
    ${game.description}
</div>
<hr>
<div class="text-info mx-sm-3">
    <span>Current rating: ${game.rating}</span>
    <c:if test="${game.rating == null}">
        <span>No ratings yet</span><br>
        <a class="btn btn-info" href="http://localhost:8080/game/${game.id}/rate">Rate this game</a>
    </c:if>
</div>
<hr>
<div class="text-info mx-sm-3">
    <h6><u>Comments:</u></h6>
    No comments yet
</div>
</body>
</html>
