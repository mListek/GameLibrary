<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 23.10.18
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add game</title>
</head>
<body>
<h3>Add new user:</h3>
<form:form method="post" modelAttribute="game">

    <label for="titleId"> Title:</label>
    <form:input path="title" id="titleId" placeholder="Game title"/>
    <form:errors path="title"/><br>

    <label for="descriptionId"> Description:</label>
    <form:input path="description" id="descriptionId" placeholder="Description"/>

    <input type="submit" value="Submit">
</form:form>

<c:if test="${gameFailed == true}">
    <div class="error">This game alredy exists</div>
</c:if>
</body>
</html>
