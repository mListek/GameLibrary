<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 25.10.18
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add news</title>
</head>
<body>
<div class="links">
    <a href="http://localhost:8080/home">Home</a>
    <a href="http://localhost:8080/game/list">Game list</a>
    <a href="http://localhost:8080/message/list">Messages</a>
    <a href="http://localhost:8080/">Your games</a>
    <a href="http://localhost:8080/logout">Log out</a>
</div>
<h3>Write news:</h3>
<form:form method="post" modelAttribute="news">

    <label for="titleId"> Title:</label>
    <form:input path="title" id="titleId" placeholder="News title"/>
    <form:errors path="title"/><br>

    <label for="descriptionId"> Content:</label>
    <form:textarea path="description" id="descriptionId" placeholder="Your news"/><br>

    <input type="submit" value="Submit">
</form:form>
</body>
</html>
