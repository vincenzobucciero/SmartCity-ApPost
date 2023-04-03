package com.example.smartcity.controller;


import com.example.smartcity.model.ParkingBean;
import com.example.smartcity.Algoritmo.AStar;
import com.example.smartcity.Algoritmo.Location;
import com.example.smartcity.Algoritmo.Nodo;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ViewParkServlet", value = "/ViewParkServlet")
public class ViewParkServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}