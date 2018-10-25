<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 24.10.18
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add category</title>
</head>
<body>
<div class="links">
    <a href="http://localhost:8080/">Home</a>
    <a href="http://localhost:8080/game/list">Game list</a>
    <a href="http://localhost:8080/">Messages</a>
    <a href="http://localhost:8080/">Your games</a>
    <a href="http://localhost:8080/">Log in</a>
</div>
<h3>Add new category:</h3>
<form:form method="post" modelAttribute="category">

    <label for="nameId"> Category name:</label>
    <form:input path="name" id="nameId" placeholder="Name"/>
    <form:errors path="name"/><br>

    <input type="submit" value="Submit">
</form:form>

<c:if test="${categoryFailed == true}">
    <div class="error">This category alredy exists</div>
</c:if>
</body>
</html>
