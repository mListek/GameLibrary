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
    <title>Rate game</title>
</head>
<body>
<form method="post">
    <label for="rateId"> Rate the game:</label>
    <input type="number" name="rating" id="rateId" placeholder="1-10">
    <input type="submit" value="Add rating">
    <input hidden type="text" name="game" value="${game.title}">
</form>
</body>
</html>
