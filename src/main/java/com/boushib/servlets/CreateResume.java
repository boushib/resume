package com.boushib.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CreateResume")
public class CreateResume extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    String first_name = request.getParameter("first_name");
    String last_name = request.getParameter("last_name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String professional_experience = request.getParameter("professional_experience");
    String training = request.getParameter("training");
    String skills = request.getParameter("skills");

    request.setAttribute("first_name", first_name);
    request.setAttribute("last_name", last_name);
    request.setAttribute("email", email);
    request.setAttribute("phone", phone);
    request.setAttribute("address", address);
    request.setAttribute("professional_experience", professional_experience);
    request.setAttribute("training", training);
    request.setAttribute("skills", skills);

    this.getServletContext().getRequestDispatcher("my-resume.jsp").forward(request, response);
  }

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    this.getServletContext().getRequestDispatcher("create-resume.jsp").forward(request, response);
  }
}
