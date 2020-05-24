<%@ page pageEncoding="utf-8" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Resume Management - My Resume</title>
  <link rel="stylesheet" href="assets/css/app.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
        rel="stylesheet">
</head>
<body>
<%@ include file="navbar.jsp" %>
<%
  String first_name = (String) request.getAttribute("first_name");
  String last_name = (String) request.getAttribute("last_name");
  String job_title = (String) request.getAttribute("job_title");
  String email = (String) request.getAttribute("email");
  String phone = (String) request.getAttribute("phone");
  String address = (String) request.getAttribute("address");
  String professional_experience = (String) request.getAttribute("professional_experience");
  String education = (String) request.getAttribute("education");
  String skills = (String) request.getAttribute("skills");
%>
<main class="my-resume">
  <div class="container">
    <div class="card">
      <div class="user-info">
        <div>
          <h2><% out.println(first_name);%> <% out.println(last_name);%></h2>
          <div class="job-title"><% out.println(job_title);%></div>
        </div>
        <img src="https://lh6.googleusercontent.com/uHs0GPjeFGaXB0xg1wHOAYgpjWe9wDw-TN_5O5pnoNJ1C6x6YMojHsRfPVS_kBvh_INuFSWP2l06IcPoFZy9=w1920-h969-rw" alt="">
      </div>
      <hr>
      <h3>Contact me</h3>
      <ul class="contact">
        <li>
          <div class="icon"><span class="material-icons">phone</span></div>
          <% out.println(phone);%>
        </li>
        <li>
          <div class="icon"><span class="material-icons">message</span></div>
          <% out.println(email);%>
        </li>
        <li>
          <div class="icon"><span class="material-icons">location_on</span></div>
          <% out.println(address);%>
        </li>
      </ul>

      <h3>Professional experience</h3>
      <ul>
        <li><% out.println(professional_experience);%></li>
      </ul>

      <h3>Education</h3>
      <ul>
        <li><% out.println(education);%></li>
      </ul>

      <h3>Skills</h3>
      <ul>
        <li><% out.println(skills);%></li>
      </ul>
    </div>
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