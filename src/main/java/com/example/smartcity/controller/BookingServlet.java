package com.example.smartcity.controller;

import com.example.smartcity.model.BookingBean;
import com.example.smartcity.model.ParkingBean;
import com.example.smartcity.model.ParkingDao;
import com.example.smartcity.model.UsersBean;
import com.example.smartcity.service.BookingService;

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
        String email = request.getParameter("email");

        HttpSession session = request.getSession(false);
        if ( session == null ) {
            session.setAttribute("isLog",0);
            request.getRequestDispatcher("login.jsp").forward(request,response);
        } else {
            UsersBean usersBean = (UsersBean) session.getAttribute("usersBean");
            request.setAttribute("usersBean", usersBean);
        }

        String dataPrenotazione = request.getParameter("dataP");
        String orarioInizio = request.getParameter("oraI");
        String orarioFine = request.getParameter("oraF");
        String targaVeicolo = request.getParameter("targa");
        String tipoVeicolo = request.getParameter("tipoV");


        BookingBean bookingBean = new BookingBean();
        bookingBean.setData_prenotazione(dataPrenotazione);
        bookingBean.setOrario_inizio(orarioInizio);
        bookingBean.setOrario_fine(orarioFine);
        bookingBean.setTargaVeicolo(targaVeicolo);
        bookingBean.setTipoVeicolo(tipoVeicolo);
        bookingBean.setEmail(email);

        BookingService.Booking(bookingBean);

        request.getRequestDispatcher("prenotazione.jsp").forward(request, response);

    }
}