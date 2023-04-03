package com.example.smartcity.controller;

import com.example.smartcity.service.ModifyService;
import com.example.smartcity.service.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ChangeInfoUserServlet", value = "/ChangeInfoUserServlet")
public class ChangeInfoUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        String email = request.getParameter("email");
        String nome = request.getParameter("nome");

        UserService.modifyNomeUtente(email, nome);

        request.getRequestDispatcher("infoUtente.jsp").forward(request, response);
    }
}
