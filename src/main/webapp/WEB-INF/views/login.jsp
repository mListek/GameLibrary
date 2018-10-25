<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 23.10.18
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div class="links">
    <a href="http://localhost:8080/game/list">Game list</a>
    <a href="http://localhost:8080/">Messages</a>
    <a href="http://localhost:8080/">Your games</a>
    <a href="http://localhost:8080/">Log in</a>
</div>
<div>
    <form method="post">
        <label for="loginId">Login</label>
        <input type="text" name="login" id="loginId" placeholder="Login"><br>
        <label for="passwordId">Password:</label>
        <input type="password" name="password" id="passwordId" placeholder="Password"><br>
        <input type="submit" value="Submit">
    </form>
</div>
<c:if test="${loginFailed == true}">
    <div class="error">Wrong login or password, please try again</div>
    <a href="http://localhost:8080/user/add">Create new account</a>
</c:if>

</body>
</html>
