package com.example.smartcity.controller;
import com.example.smartcity.service.algoritmo.Location;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
@WebServlet(name = "PathServlet", value = "/PathServlet")
public class PathServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("ciao");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");


        String startIndirizzo = request.getParameter("start");
        String endIndirizzo = request.getParameter("dest");

        //Recuperiamo la sessione corrente
        HttpSession oldSession = request.getSession(false);
        if (oldSession != null){
            oldSession.invalidate();
        }

        HttpSession currentSession = request.getSession();
        currentSession.setAttribute("start",startIndirizzo);
        currentSession.setAttribute("dest",endIndirizzo);
        currentSession.setMaxInactiveInterval(5*60);

        System.out.println("Le scelte sono:" + startIndirizzo +" " + endIndirizzo);

        response.sendRedirect("findPath.jsp");


    }
}
