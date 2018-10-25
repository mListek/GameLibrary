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
    <title>Category List</title>
</head>
<body>
<div class="links">
    <a href="http://localhost:8080/home">Home</a>
    <a href="http://localhost:8080/game/list">Game list</a>
    <a href="http://localhost:8080/message/list">Messages</a>
    <a href="http://localhost:8080/">Your games</a>
    <a href="http://localhost:8080/logout">Log out</a>
</div>
<a href="http://localhost:8080/category/add">Add new</a>
<a href="http://localhost:8080/">Home</a>
<h3>Category List:</h3>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <c:forEach var="category" items="${categories}">
        <tr>
            <td>${category.id}</td>
            <td>${category.name}</td>
            <td><a href="http://localhost:8080/category/update/${category.id}">Edit</a></td>
            <td><a href="http://localhost:8080/category/delete/${category.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
