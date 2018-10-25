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
    <title>News List</title>
</head>
<body>
<div class="links">
    <a href="http://localhost:8080/game/list">Game list</a>
    <a href="http://localhost:8080/">Messages</a>
    <a href="http://localhost:8080/">Your games</a>
    <a href="http://localhost:8080/">Log in</a>
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
</body>
</html>
