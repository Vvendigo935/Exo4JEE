<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 11/06/2025
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form</title>
</head>
<body>
<h1>Form to add your cat :</h1>
<form action="cats" method="post">
  <div>
    <label for="name">Name : </label>
    <input type="text" name="name" id="name">
  </div>
  <div>
    <label for="race">Race : </label>
    <input type="text" name="race" id="race">
  </div>
  <div>
    <label for="food">Favorite food : </label>
    <input type="text" name="food" id="food">
  </div>
  <div>
    <label for="birthDate">Birth Date : </label>
    <input type="text" name="birthDate" id="birthDate">
  </div>
  <button>Add</button>
</form>

</body>
</html>
