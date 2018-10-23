<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 23.10.18
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add user</title>
</head>
<body>
<h3>Add new user:</h3>
<form:form method="post" modelAttribute="user">

    <label for="usernameId"> Profile name:</label>
    <form:input path="username" id="usernameId" placeholder="Username"/>
    <form:errors path="username"/><br>

    <label for="loginId"> Login:</label>
    <form:input path="login" id="loginId" placeholder="Login"/>
    <form:errors path="login"/><br>

    <label for="passwordId"> Password:</label>
    <form:input type="password" path="password" id="passwordId" placeholder="Password"/>
    <form:errors path="password"/><br>

    <input type="submit" value="Submit">
</form:form>

<c:if test="${loginFailed == true}">
    <div class="error">This login alredy exists</div>
</c:if>
</body>
</html>