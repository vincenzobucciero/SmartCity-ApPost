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


    private final String st  = "Pomigliano";
    private final String ed = "Casoria";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        /*String startIndirizzo = request.getParameter("start");
        String endIndirizzo = request.getParameter("dest");

        System.out.println("ciao2");
        System.out.println("Indirizzo partenza scelto:" + startIndirizzo);
        System.out.println("Indirizzo arrivo scelto:" + endIndirizzo);



        request.getRequestDispatcher("provaPath.jsp").forward(request, response);
        */

        String startIndirizzo = request.getParameter("start");
        String endIndirizzo = request.getParameter("dest");

        if (st.equals(startIndirizzo) && ed.equals(endIndirizzo)){

            //In questo caso è corretto

            //Recuperiamo la sessione corrente
            HttpSession oldSession = request.getSession(false);
            if (oldSession != null){
                oldSession.invalidate();
            }

            HttpSession currentSession = request.getSession();
            currentSession.setAttribute("st",startIndirizzo);
            currentSession.setAttribute("ed",endIndirizzo);
            currentSession.setMaxInactiveInterval(5*60);

            System.out.println("Sono giusti:" + startIndirizzo +" " + endIndirizzo);

            response.sendRedirect("successo.jsp");
        }
        else {
            //Non è corretto

            System.out.println("Sono sbagliati:" + startIndirizzo +" " + endIndirizzo);

            response.sendRedirect("userHomePage.jsp");
        }

    }
}
