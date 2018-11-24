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
<div class="links">
    <a href="http://localhost:8080/home">Home</a>
    <a href="http://localhost:8080/game/list">Game list</a>
    <a href="http://localhost:8080/logout">Log out</a>
</div>
<form method="post">
    <label for="rateId"> Rate the game:</label>
    <input type="number" name="rating" id="rateId" placeholder="1-10">
    <input type="submit" value="Add rating">
    <input hidden type="text" name="game" value="${game.title}">
</form>
</body>
</html>
