<%@ page import="org.example.exo4.model.Cat" %>
<jsp:useBean id="cats" type="java.util.ArrayList<org.example.exo4.model.Cat>" scope="request" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
  <title>Cat's list</title>
</head>
<body>
<main class="container">
  <h1>List of the cats</h1>
  <table class="table table-dark text-center align-middle">
    <thead>
    <tr>
      <th>Name</th>
      <th>Race</th>
      <th>Fav Food</th>
      <th>Birth date</th>
    </tr>
    </thead>
    <tbody>
    <% if (cats.isEmpty()){ %>
      <tr>
      <td> No cats are there at the moment </td>
      </tr>
    <% } %>
    <% for (Cat c : cats) {%>
    <tr>
      <td> <%= c.getName()%> </td>
      <td> <%= c.getRace()%> </td>
      <td> <%= c.getFood()%> </td>
      <td> <%= c.getBirthDate()%> </td>
    </tr>
    <% } %>
    </tbody>
  </table>
</main>
</body>
</html>