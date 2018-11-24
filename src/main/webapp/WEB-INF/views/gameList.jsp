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
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <title>Game List</title>
</head>
<body>
<nav class="navbar bg-primary">
    Hello...
</nav>
<div class="links">
    <a href="http://localhost:8080/home">Home</a>
    <a href="http://localhost:8080/game/list">Game list</a>
    <a href="http://localhost:8080/logout">Log out</a>
</div>
<a href="http://localhost:8080/game/add">Add new game to the list</a>
<h3>Game List:</h3>
<table>
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Description</th>
        <c:if test="${sessionScope.admin == 'true'}">
            <th>Edit</th>
            <th>Delete</th>
        </c:if>
    </tr>

    <c:forEach var="game" items="${games}">
        <tr>
            <td>${game.id}</td>
            <td><a href="http://localhost:8080/game/${game.id}">${game.title}</a></td>
            <td>${game.description}</td>
            <c:if test="${sessionScope.admin == 'true'}">
            <td><a href="http://localhost:8080/game/update/${game.id}">Edit</a></td>
            <td><a href="http://localhost:8080/game/delete/${game.id}">Delete</a></td>
            </c:if>
        </tr>
    </c:forEach>
</table>
</body>
</html>
