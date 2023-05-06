package com.example.smartcity.controller;

import com.example.smartcity.model.DAO.BookingDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

import com.example.smartcity.model.Bean.UserBean;

@WebServlet(name = "DeleteBookingServlet", value = "/DeleteBookingServlet")
public class DeleteBookingServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession( false );
        if ( session == null ) {
            session.setAttribute( "isLog",0 );
            request.getRequestDispatcher( "login.jsp" ).forward(request,response);
        } else {

            String idPrenotazione = request.getParameter( "id" );
            System.out.println( "Cancella: " + idPrenotazione );

            BookingDao.deleteBooking( idPrenotazione );

            String email = request.getParameter("email");

            if (email.equals("admin@admin.com")){
                System.out.println("Sono entrato nell'admin");
                request.getRequestDispatcher("cancelPageAdmin.jsp").forward(request,response);
            }
            else {
                System.out.println("Non sono nell'admin");
                request.getRequestDispatcher("cancelPage.jsp").forward(request, response);
            }

        }

    }
}
