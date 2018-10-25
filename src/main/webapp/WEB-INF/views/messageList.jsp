<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 24.10.18
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Message List</title>
</head>
<body>
<div class="links">
    <a href="http://localhost:8080/home">Home</a>
    <a href="http://localhost:8080/game/list">Game list</a>
    <a href="http://localhost:8080/message/list">Messages</a>
    <a href="http://localhost:8080/">Your games</a>
    <a href="http://localhost:8080/logout">Log out</a>
</div>
<a href="http://localhost:8080/message/add">Add new</a>
<a href="http://localhost:8080/">Home</a>
<h3>Message List:</h3>
<table>
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Description</th>
        <th>Delete</th>
    </tr>

    <c:forEach var="message" items="${messages}">
        <tr>
            <td>${message.id}</td>
            <td>${message.title}</td>
            <td>${message.description}</td>
            <td><a href="http://localhost:8080/message/delete/${message.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
