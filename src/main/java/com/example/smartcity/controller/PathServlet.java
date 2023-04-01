package com.example.smartcity.controller;
import com.example.smartcity.service.algoritmo.Location;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
@WebServlet(name = "PathServlet", value = "/PathServlet")
public class PathServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("ciao");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        System.out.println("ciao5");
        String startIndirizzo = request.getParameter("indirizzoS");
        System.out.println("Indirizzo preso: " + startIndirizzo);

        request.getRequestDispatcher("findPath.jsp").forward(request, response);

    }
}
