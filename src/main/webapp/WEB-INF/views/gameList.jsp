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
    <title>Game List</title>
</head>
<body>
<div class="links">
    <a href="http://localhost:8080/">Home</a>
    <a href="http://localhost:8080/game/list">Game list</a>
    <a href="http://localhost:8080/">Messages</a>
    <a href="http://localhost:8080/">Your games</a>
    <a href="http://localhost:8080/">Log in</a>
</div>
<a href="http://localhost:8080/game/add">Add new</a>
<a href="http://localhost:8080/">Home</a>
<h3>Game List:</h3>
<table>
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Description</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <c:forEach var="game" items="${games}">
        <tr>
            <td>${game.id}</td>
            <td>${game.title}</td>
            <td>${game.description}</td>
            <td><a href="http://localhost:8080/game/update/${game.id}">Edit</a></td>
            <td><a href="http://localhost:8080/game/delete/${game.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
