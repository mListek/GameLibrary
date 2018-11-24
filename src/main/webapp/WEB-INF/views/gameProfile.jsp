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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
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
        <a href="http://localhost:8080/${game.id}/rate">Rate this game</a>
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
