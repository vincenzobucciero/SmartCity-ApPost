package com.example.smartcity.controller;

import com.example.smartcity.Algoritmo.Location;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ViewPathServlet", value = "/ViewPathServlet")
public class ViewPathServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        request.getRequestDispatcher("risultati.jsp").forward(request,response);

        System.out.println("Sono nella viewServlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }
}
