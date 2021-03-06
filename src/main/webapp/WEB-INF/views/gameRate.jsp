<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 25.10.18
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <title>Rate game</title>
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
<form method="post">
    <div class="form-group mx-sm-3">
        <label for="rateId" class="text-info"> Rate the game:</label>
        <input type="number" class="form-control" name="rating" id="rateId" placeholder="1-10">
    </div>
    <div class="form-control mx-sm-3">
        <input type="submit" class="btn btn-info" value="Add rating">
    </div>
</form>
</body>
</html>
