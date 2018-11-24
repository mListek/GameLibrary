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
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <title>Login</title>
</head>
<body>
<div>
    <h3 class="text-info font-weight-bold mx-sm-3">Welcome to Internet Game Database</h3>
</div>
<h4 class="text-info mx-sm-3">Please log in to enter:</h4>
<div>
    <form method="post">
        <div class="form-group mx-sm-3 my-2 col-4">
            <label for="loginId" class="text-info">Login</label>
            <input type="text" class="form-control" name="login" id="loginId" placeholder="Login"><br>
        </div>
        <div class="form-group mx-sm-3 mt-2 mb-4 col-4">
            <label for="passwordId" class="text-info">Password:</label>
            <input type="password" class="form-control" name="password" id="passwordId" placeholder="Password"><br>
        </div>
        <div class="form-group mx-sm-3">
            <input type="submit" class="btn btn-info" value="Submit">
        </div>
    </form>
</div>
<c:if test="${loginFailed == true}">
    <div class="error text-danger font-weight-bold">Wrong login or password, please try again!</div>
</c:if>
<div class="mx-sm-3">
    <span class="text-info">Dont have an account? <a class="text-success font-weight-bold font"
                                                     href="http://localhost:8080/user/add"><u>Create one</u></a></span>
</div>

</body>
</html>
