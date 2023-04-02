package com.example.smartcity.controller;

import com.example.smartcity.model.UsersBean;
import com.example.smartcity.service.Algoritmo.Location;
import com.example.smartcity.service.Algoritmo.Nodo;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SearchServlet", value = "/SearchServlet")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        request.getRequestDispatcher("findPath.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        //Location start = new Location();
        //String startIndirizzo = request.getParameter("indirizzoS");
        //System.out.println("Indirizzo preso: " + startIndirizzo);
        //Nodo finalNode = start.chooseEnd("Napoli");

    }
}