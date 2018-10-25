<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 24.10.18
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add message</title>
</head>
<body>
<div class="links">
    <a href="http://localhost:8080/">Home</a>
    <a href="http://localhost:8080/game/list">Game list</a>
    <a href="http://localhost:8080/">Messages</a>
    <a href="http://localhost:8080/">Your games</a>
    <a href="http://localhost:8080/">Log in</a>
</div>
<h3>Write new message:</h3>
<form:form method="post" modelAttribute="message">

    <label for="titleId"> Title:</label>
    <form:input path="title" id="titleId" placeholder="Message title"/>
    <form:errors path="title"/><br>

    <label for="descriptionId"> Content:</label>
    <form:textarea path="description" id="descriptionId" placeholder="Your message"/><br>

    <label for="usernameId"> Recipient name:</label>
    <form:input path="username" id="usernameId" placeholder="Recipient name"/>


    <input type="submit" value="Submit">
</form:form>

<c:if test="${noSuchUser == true}">
    <div class="error">There is no such user</div>
</c:if>
</body>
</html>
