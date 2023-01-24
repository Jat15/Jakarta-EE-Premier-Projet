<%--
  Created by IntelliJ IDEA.
  User: JatMuadDib
  Date: 23/01/2023
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User list</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body class="container">
  <header class="row">
    <h1>User list</h1>
  </header>
<main class="row">


  <table class="table">
    <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Username</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${users}" var="user">
      <tr>
        <th scope="row">${user.id}</th>
        <td>${user.firstname}</td>
        <td>${user.lastname}</td>
        <td>${user.username}</td>
      </tr>
    </c:forEach>
    </tbody>
  </table>




</main>
</body>
</html>
