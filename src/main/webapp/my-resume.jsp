<%@ page pageEncoding="utf-8" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Resume Management - My Resume</title>
  <link rel="stylesheet" href="assets/css/app.css">
</head>
<body>
<%@ include file="navbar.jsp" %>
<%
  String first_name = (String) request.getAttribute("first_name");
  String last_name = (String) request.getAttribute("last_name");
  String email = (String) request.getAttribute("email");
  String phone = (String) request.getAttribute("phone");
  String address = (String) request.getAttribute("address");
  String professional_experience = (String) request.getAttribute("professional_experience");
  String training = (String) request.getAttribute("training");
  String skills = (String) request.getAttribute("skills");
%>
<main class="my-resume">
  <div class="container">
    <h2>My Resume</h2>
    <ul>
      <li>Name: <% out.println(first_name);%> <% out.println(last_name);%></li>
      <li>Email: <% out.println(email);%></li>
      <li>Phone: <% out.println(phone);%></li>
      <li>Address: <% out.println(address);%></li>
      <li>Professional Experience: <% out.println(professional_experience);%></li>
      <li>Training: <% out.println(training);%></li>
      <li>Skills: <% out.println(skills);%></li>
    </ul>
  </div>
</main>
<footer>
  <div class="container">
    &copy; Boushib El Hassane - High Tech, Rabat
  </div>
</footer>

<script src="assets/js/app.js"></script>
</body>
</html>