package com.example.smartcity.controller;

import com.example.smartcity.model.*;
import com.example.smartcity.service.BookingService;
import com.example.smartcity.service.Factory.*;
import com.example.smartcity.service.Strategy.*;
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
        int id = Integer.parseInt(request.getParameter("id"));
        ParkingBean parkingBean = ParkingDao.getIstanza().getParkingBean(id);

        //String idBooking = request.getParameter("idBooking"); //controlla se cancellare
        String email = request.getParameter("email");
        String nome = request.getParameter("intestatario");
        String numeroCarta = request.getParameter("numCarta");
        String cvv = request.getParameter("cvv");
        String meseScadenza = request.getParameter("MM");
        String annoScadenza = request.getParameter("YYYY");

        String dataScadenza = annoScadenza + "-" + meseScadenza;

        HttpSession session = request.getSession(false);
        if ( session == null ) {
            session.setAttribute("isLog",0);
            request.getRequestDispatcher("login.jsp").forward(request,response);
        } else {
            BookingBean bookingBean = (BookingBean) session.getAttribute("bookingBean");

            PaymentStrategy paymentMethod = new CreditCardStrategy(nome, numeroCarta, cvv,dataScadenza );

            String tipoVeicolo = bookingBean.getTipoVeicolo();
            System.out.println("veicolo " + tipoVeicolo);
            switch (tipoVeicolo){
                case "Auto":
                    //bookingBean.setPrezzo(parkingBean.getTariffaAF() + 1.99);
                    System.out.println("Prezzo" + bookingBean.getPrezzo());
                    paymentMethod.pay(bookingBean.getPrezzo());
                    FactoryPosto factoryAuto = new FactoryPostoAuto();
                    Posto auto = factoryAuto.getPosto(id, parkingBean);

                    //inserisco la prenotazione
                    BookingService.Booking(bookingBean);
                    break;
                case "Furgone":
                    //bookingBean.setPrezzo(parkingBean.getTariffaAF() + 1.99);
                    paymentMethod.pay(bookingBean.getPrezzo());
                    FactoryPosto factoryFurgone = new FactoryPostoFurgone();
                    Posto furgone = factoryFurgone.getPosto(id, parkingBean);

                    //inserisco la prenotazione
                    BookingService.Booking(bookingBean);
                    break;
                case "Moto":
                    //bookingBean.setPrezzo(parkingBean.getTariffaM() + 1.99);
                    paymentMethod.pay(bookingBean.getPrezzo());
                    FactoryPosto factoryMoto = new FactoryPostoMoto();
                    Posto moto = factoryMoto.getPosto(id, parkingBean);

                    //inserisco la prenotazione
                    BookingService.Booking(bookingBean);
                    break;
                default:
                    break;
            }

            session.setAttribute("email", email);
            request.getRequestDispatcher("thankYouPage.jsp").forward(request,response);

        }

    }
}