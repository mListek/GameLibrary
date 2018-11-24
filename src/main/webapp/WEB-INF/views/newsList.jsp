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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>News List</title>
</head>
<body>
<div class="links">
    <a href="http://localhost:8080/home">Home</a>
    <a href="http://localhost:8080/game/list">Game list</a>
    <a href="http://localhost:8080/logout">Log out</a>
</div>
<a href="http://localhost:8080/news/add">Add new</a>
<a href="http://localhost:8080/">Home</a>
<h3>News List:</h3>
<table>
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Description</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <c:forEach var="news" items="${news}">
        <tr>
            <td>${news.id}</td>
            <td>${news.title}</td>
            <td>${news.description}</td>
            <td><a href="http://localhost:8080/news/update/${news.id}">Edit</a></td>
            <td><a href="http://localhost:8080/news/delete/${news.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
