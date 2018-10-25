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
    <title>User List</title>
</head>
<body>
<div class="links">
    <a href="http://localhost:8080/home">Home</a>
    <a href="http://localhost:8080/game/list">Game list</a>
    <a href="http://localhost:8080/message/list">Messages</a>
    <a href="http://localhost:8080/">Your games</a>
    <a href="http://localhost:8080/logout">Log out</a>
</div>
<a href="http://localhost:8080/user/add">Add new</a>
<a href="http://localhost:8080/">Home</a>
<h3>User List:</h3>
<table>
    <tr>
        <th>Id</th>
        <th>Username</th>
        <th>Login</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.login}</td>
            <td><a href="http://localhost:8080/user/update/${user.id}">Edit</a></td>
            <td><a href="http://localhost:8080/user/delete/${user.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
