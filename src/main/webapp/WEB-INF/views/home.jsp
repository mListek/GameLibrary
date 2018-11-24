<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 23.10.18
  Time: 09:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <title>Home</title>
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
        </ul>
    </div>
</nav>
<h3 class="text-info mx-sm-3 my-1 font-weight-bold">Internet Game Database!</h3>
    <div class="text-info mx-sm-3">
       <span>Welcome </span><span class="font-italic text-success">${sessionScope.username}!</span>
    </div>
<h4 class="text-info mx-sm-3"><u>Lastest news:</u></h4>
<hr>
<div class="text-info mx-sm-3">
    <c:forEach var="currentNews" items="${news}">
        <span class="font-weight-bold">${currentNews.title}</span><br>
        <span>${currentNews.description}</span>
        <c:if test="${sessionScope.admin == 'true'}">
        <a href="http://localhost:8080/news/update/${currentNews.id}">Edit</a>
        <a href="http://localhost:8080/news/delete/${currentNews.id}">Delete</a><br>
        </c:if>
        <br /><br />
        <hr>
    </c:forEach>
</div>
</body>
</html>
