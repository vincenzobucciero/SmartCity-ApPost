package com.example.smartcity.controller;

import com.example.smartcity.model.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "PayServlet", value = "/PayServlet")
public class PayServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        System.out.println("Ciao sono nella payServlet");

        HttpSession session = request.getSession(false);
        if ( session == null ) {
            session.setAttribute("isLog",0);
            request.getRequestDispatcher("login.jsp").forward(request,response);
        } else {
            BookingBean bookingBean = (BookingBean) session.getAttribute("bookingBean");
            System.out.println("PayServlet: " + bookingBean.getID_prenotazione());
            System.out.println("PayServlet: " + bookingBean.getData_prenotazione());
            System.out.println("PayServlet: " + bookingBean.getEmail());
            System.out.println("PayServlet: " + bookingBean.getPagamento());

            request.getRequestDispatcher("thankYouPage.jsp").forward(request,response);
        }
    }
}
