package com.example.smartcity.controller;


import com.example.smartcity.model.ParkingBean;
import com.example.smartcity.model.ParkingDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "BookingServlet", value = "/BookingServlet")
public class BookingServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println("Id:" + id);
        ParkingBean parkingBean = ParkingDao.getIstanza().getParkingBean(id);
        request.setAttribute("parkingBean", parkingBean);

        request.getRequestDispatcher("prenotazione.jsp").forward(request,response);
    }
}