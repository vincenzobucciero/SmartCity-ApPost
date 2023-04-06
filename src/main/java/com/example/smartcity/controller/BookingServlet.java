package com.example.smartcity.controller;

import com.example.smartcity.model.BookingBean;
import com.example.smartcity.service.Factory.*;
import com.example.smartcity.model.ParkingBean;
import com.example.smartcity.model.ParkingDao;
import com.example.smartcity.model.UsersBean;
import com.example.smartcity.service.BookingService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.apache.commons.lang3.RandomStringUtils;

import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "BookingServlet", value = "/BookingServlet")
public class BookingServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        int id = Integer.parseInt(request.getParameter("id"));
        String email = request.getParameter("email");

        ParkingBean parkingBean = ParkingDao.getIstanza().getParkingBean(id);

        HttpSession session = request.getSession(false);
        if ( session == null ) {
            session.setAttribute("isLog",0);
            request.getRequestDispatcher("login.jsp").forward(request,response);
        } else {
            UsersBean usersBean = (UsersBean) session.getAttribute("usersBean");
            request.setAttribute("usersBean", usersBean);
            request.setAttribute( "email", usersBean.getEmail() );
            request.setAttribute("parkingBean", parkingBean); //serve??
            request.setAttribute("id", id);
            request.getRequestDispatcher("prenotazione.jsp").forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        ParkingBean parkingBean = ParkingDao.getIstanza().getParkingBean(id);

        String email = request.getParameter("email");
        String dataPrenotazione = request.getParameter("dataP");
        String orarioInizio = request.getParameter("oraI");
        String orarioFine = request.getParameter("oraF");
        String targaVeicolo = request.getParameter("targa");
        String tipoVeicolo = request.getParameter("tipoV");

        String idBooking = RandomStringUtils.randomAlphabetic(7);
        System.out.println(idBooking);



        //System.out.println("Booking Data " + bookingBean.getData_prenotazione());

        HttpSession session = request.getSession(false);

        if ( session == null ) {
            session.setAttribute("isLog",0);
            request.getRequestDispatcher("login.jsp").forward(request,response);
        } else {
            BookingBean bookingBean = new BookingBean();
            bookingBean.setID_prenotazione(idBooking);
            bookingBean.setData_prenotazione( dataPrenotazione );
            bookingBean.setOrario_inizio( orarioInizio );
            bookingBean.setOrario_fine( orarioFine );
            bookingBean.setTargaVeicolo( targaVeicolo );
            bookingBean.setTipoVeicolo( tipoVeicolo );
            bookingBean.setEmail( email );

            System.out.println("Veicolo " + tipoVeicolo);

            switch (tipoVeicolo){
                case "Auto":
                    bookingBean.setPrezzo(parkingBean.getTariffaAF());
                    FactoryPosto factoryAuto = new FactoryPostoAuto();
                    Posto auto = factoryAuto.getPosto(id, parkingBean);
                    break;
                case "Furgone":
                    bookingBean.setPrezzo(parkingBean.getTariffaAF());
                    FactoryPosto factoryFurgone = new FactoryPostoFurgone();
                    Posto furgone = factoryFurgone.getPosto(id, parkingBean);
                    break;
                case "Moto":
                    bookingBean.setPrezzo(parkingBean.getTariffaM());
                    FactoryPosto factoryMoto = new FactoryPostoMoto();
                    Posto moto = factoryMoto.getPosto(id, parkingBean);
                    break;
                default:
                    break;
            }

            session.setAttribute("idBooking", idBooking);
            session.setAttribute("bookingBean", bookingBean);
            request.getRequestDispatcher("pagamento.jsp").forward(request, response);

        }

    }
}