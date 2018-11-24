<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 25.10.18
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <title>Game profile</title>
</head>
<body>
<div class="links">
    <a href="http://localhost:8080/home">Home</a>
    <a href="http://localhost:8080/game/list">Game list</a>
    <a href="http://localhost:8080/logout">Log out</a>
</div>

<h3>${game.title}</h3>
<div>
    ${game.description}
</div>
<div>
    <span>Current rating: ${game.rating}</span>
    <c:if test="${game.rating == null}">
        <span>No ratings yet</span><br>
        <a href="http://localhost:8080/game/${game.id}/rate">Rate this game</a>
    </c:if>
</div>
<%--<form method="post">--%>
    <%--<label for="commentId">Add comment:</label>--%>
    <%--<textarea id="commentId" name="description" placeholder="Comment..."></textarea>--%>
    <%--<input type="submit" value="Add coment">--%>
    <%--<input hidden type="text" name="game" value="${game.title}">--%>
<%--</form>--%>
<div>
    <h6>Comments:</h6>
    No comments yet
</div>
</body>
</html>
