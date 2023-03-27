package com.example.smartcity.controller;

import com.example.smartcity.model.LoginDao;
import com.example.smartcity.model.ParkingBean;
import com.example.smartcity.model.ParkingDao;
import com.example.smartcity.model.UsersBean;
import com.example.smartcity.service.ModifyService;
import com.oracle.wls.shaded.org.apache.xpath.operations.Mod;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ModifyServlet", value = "/ModifyServlet")
public class ModifyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("adminHomePage.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String idparking = request.getParameter("idparking");
        ParkingBean parkingBean = ParkingDao.getIstanza().getParkingBean(Integer.parseInt(idparking));


        HttpSession vecchiaSession = request.getSession();

        if (vecchiaSession != null){
            vecchiaSession.invalidate();
        }
        HttpSession newSession = request.getSession();
        newSession.setMaxInactiveInterval(20*60);

        newSession.setAttribute("parkingBean",parkingBean);
        newSession.setAttribute("isLog",2);
        request.setAttribute("loggato",2);
        request.setAttribute("parkingBean", parkingBean);
        request.getRequestDispatcher("modificaTariffa.jsp").forward(request, response);
    }
}