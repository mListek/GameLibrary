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
<div class="links">
    <a href="http://localhost:8080/home">Home</a>
    <a href="http://localhost:8080/game/list">Game list</a>
    <a href="http://localhost:8080/logout">Log out</a>
</div>
<h3>Internet Game Database!</h3>
    <div>
       <span>Welcome ${sessionScope.username}!</span>
    </div>
<h4>Lastest news:</h4>
<div>
    <c:forEach var="currentNews" items="${news}">
        ${currentNews.title}<br>
        ${currentNews.description}
        <c:if test="${sessionScope.admin == 'true'}">
        <a href="http://localhost:8080/news/update/${currentNews.id}">Edit</a>
        <a href="http://localhost:8080/news/delete/${currentNews.id}">Delete</a><br>
        </c:if>
        <br /><br />
    </c:forEach>
</div>
</body>
</html>
