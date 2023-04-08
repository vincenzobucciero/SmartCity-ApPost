package com.example.smartcity.controller;
import com.example.smartcity.model.BookingBean;
import com.example.smartcity.model.BookingDao;
import com.example.smartcity.model.ParkingBean;
import com.example.smartcity.model.ParkingDao;

import com.example.smartcity.service.BookingService;
import com.example.smartcity.service.ParkingService;
import jakarta.servlet.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShowBookingServlet", value = "/ShowBookingServlet")
public class ShowBookingServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");


        HttpSession session = request.getSession(false);
        if (session == null) {
            session.setAttribute("isLog", 0);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {

            System.out.println("\nSono nella showServlet\n");

            String email = request.getParameter("email");
            System.out.println("Email:" + email);

            List<BookingBean> list = BookingService.getBooking(email);

            for (BookingBean patate:list) {
                System.out.println("Prova stampa lista " + patate.getTipoVeicolo());
            }



            int size = list.size();
            int idParcheggio = Integer.parseInt(request.getParameter("idParcheggio"));

            System.out.println("StampaId: " + idParcheggio);

            ParkingBean parkingBean = ParkingService.getParkingBean(idParcheggio);
            System.out.println("Prova parking beaan:" + parkingBean.getNomeParcheggio());

            request.setAttribute("parkingBean",parkingBean);

            request.setAttribute("list",list);
            request.setAttribute("size", size);
            request.getRequestDispatcher("showBooking.jsp").forward(request, response);

        }
    }
}
