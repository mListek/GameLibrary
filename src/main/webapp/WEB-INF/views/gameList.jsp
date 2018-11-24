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
            <li>
                <a class="nav-link text-success" href="http://localhost:8080/game/add"><u>Add new game to the
                    list</u></a>
            </li>
        </ul>
    </div>
</nav>

<h3 class="text-info mx-sm-3">Game List:</h3>
<table class="table table-hover text-info">
    <thead class="thead-dark">
    <tr>
        <th class="border-info" scope="col"><span class="text-info">Id</span></th>
        <th class="border-info" scope="col"><span class="text-info">Title</span></th>
        <th class="border-info" scope="col"><span class="text-info">Description</span></th>
        <c:if test="${sessionScope.admin == 'true'}">
            <th scope="col">Edit</th>
            <th scope="col">Delete</th>
        </c:if>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="game" items="${games}">
        <tr>
            <td class="border-info">${game.id}</td>
            <td class="border-info"><a class="text-info" href="http://localhost:8080/game/${game.id}">${game.title}</a></td>
            <td class="border-info"><a class="text-info" href="http://localhost:8080/game/${game.id}">${game.description}</td>
            <c:if test="${sessionScope.admin == 'true'}">
                <td class="border-info"><a class="text-danger" href="http://localhost:8080/game/update/${game.id}">Edit</a></td>
                <td class="border-info"><a class="text-danger" href="http://localhost:8080/game/delete/${game.id}">Delete</a></td>
            </c:if>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
