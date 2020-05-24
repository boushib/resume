<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Resume Management - Create Resume</title>
  <link rel="stylesheet" href="assets/css/app.css">
</head>
<body>
  <%@ include file="navbar.jsp" %>
  <main class="create-resume">
    <div class="container">
      <div class="form-box">
        <h2>Create Resume</h2>
        <form action="create-resume" method="post">
          <div class="step active">
            <div class="form-control">
              <label for="first_name">First name</label>
              <input type="text" name="first_name" id="first_name" placeholder="Enter your first name">
            </div>
            <div class="form-control">
              <label for="last_name">Last name</label>
              <input type="text" name="last_name" id="last_name" placeholder="Enter your last name">
            </div>
            <div class="form-control">
              <label for="job_title">Job title</label>
              <input type="text" name="job_title" id="job_title" placeholder="Enter your job title">
            </div>
            <div class="form-control">
              <label for="email">Email</label>
              <input type="email" name="email" id="email" placeholder="Enter your email">
            </div>
            <div class="form-control">
              <label for="phone">Phone</label>
              <input type="tel" name="phone" id="phone" placeholder="Enter your phone number">
            </div>
            <div class="form-control">
              <label for="address">Address</label>
              <input type="text" name="address" id="address" placeholder="Enter your address">
            </div>
          </div>
          <div class="step">
            <div class="form-control">
              <label for="professional_experience">Professional experience</label>
              <textarea name="professional_experience" id="professional_experience"></textarea>
            </div>
          </div>
          <div class="step">
            <div class="form-control">
              <label for="education">Education</label>
              <textarea name="education" id="education"></textarea>
            </div>
          </div>
          <div class="step">
            <div class="form-control">
              <label for="skills">Skills</label>
              <textarea name="skills" id="skills"></textarea>
            </div>
          </div>
          <button class="btn" type="button" id="create-resume-form-btn">Next</button>
        </form>
        <div class="steps-dots">
          <div class="dot active"></div>
          <div class="dot"></div>
          <div class="dot"></div>
          <div class="dot"></div>
        </div>
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