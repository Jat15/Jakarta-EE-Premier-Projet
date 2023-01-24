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
    <title>Add user form</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body class="container">
  <header class="row">
    <h1>Add user form</h1>
  </header>
<main class="row">

  <form method="post" action="${pageContext.request.contextPath}/add-user">
  <div class="input-group mb-3">
    <span class="input-group-text" id="basic-addon1"></span>
    <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" name="username">
  </div>
  <div class="input-group mb-3">
    <span class="input-group-text" id="lastname">@</span>
    <input type="text" class="form-control" placeholder="Lastname" aria-label="LastName" aria-describedby="basic-addon1" name="lastname">
  </div>



  <div class="text-center">
    <button type="submit">Submit</button>
  </div>

  </form>

  <c:if test="${USER_ADDED_OK}">
    <div class="alert alert-success" role="alert">User successfully added !</div>
  </c:if>

  ${USER_ADD_OK ? "<div class=\"alert alert-success\" role = \"alert\" > User succesfully added !  </div >": ""}



</main>
</body>
</html>
