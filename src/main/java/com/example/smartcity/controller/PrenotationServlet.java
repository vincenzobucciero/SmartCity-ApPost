package com.example.smartcity.controller;

import com.example.smartcity.model.PrenotationBean;
import com.example.smartcity.model.UsersBean;
import com.example.smartcity.service.LogService;
import com.example.smartcity.service.PrenotationService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.Date;

@WebServlet(name = "PrenotationServlet", value = "/PrenotationServlet")
public class PrenotationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        response.sendRedirect("prenotaParcheggio.jsp");

    }
}
