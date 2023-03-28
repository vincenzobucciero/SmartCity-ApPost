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


        int idPrenot = Integer.parseInt(request.getParameter("idPrenot"));
        String data = request.getParameter("dataPrenotazione");
        String oraArrivo = request.getParameter("oraArrivo");
        String oraFine = request.getParameter("oraFine");
        String email = request.getParameter("email");
        int idPark = Integer.parseInt(request.getParameter("idParking"));
        String targa = request.getParameter("targa");

        PrenotationBean prenotationBean = new PrenotationBean();
        prenotationBean.setId_Prenotazione(idPrenot);
        prenotationBean.setDataPrenotazione(data);
        prenotationBean.setOrarioInizio(oraArrivo);
        prenotationBean.setOrarioFine(oraFine);
        prenotationBean.setEmailUtente(email);
        prenotationBean.setIdParcheggio(idPark);
        prenotationBean.setTarga(targa);


        if (PrenotationService.prenotato(prenotationBean)) {
            HttpSession vecchiaSession = request.getSession();

            if (vecchiaSession != null) {
                vecchiaSession.invalidate();
            }
            HttpSession newSession = request.getSession();
            newSession.setMaxInactiveInterval(20 * 60);

            newSession.setAttribute("prenotationBean", prenotationBean);
            newSession.setAttribute("isPrenot", 1);
            request.setAttribute("prenotato", 1);
            request.setAttribute("prenotationBean", prenotationBean);
            request.getRequestDispatcher("userHomePage.jsp").forward(request, response);

        } else {
            request.getRequestDispatcher("prenotazione.jsp").forward(request, response);
        }


    }
}
