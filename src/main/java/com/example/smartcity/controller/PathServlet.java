package com.example.smartcity.controller;
import com.example.smartcity.service.Algoritmo.AStar;
import com.example.smartcity.service.Algoritmo.Location;
import com.example.smartcity.service.Algoritmo.Nodo;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PathServlet", value = "/PathServlet")
public class PathServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        Location start = new Location();

        String startIndirizzo = request.getParameter("start");
        String endIndirizzo = request.getParameter("dest");
        System.out.println("Indirizzi: "+ startIndirizzo + endIndirizzo);

        //Recuperiamo la sessione corrente
        HttpSession oldSession = request.getSession(false);
        if (oldSession != null){
            oldSession.invalidate();
        }

        HttpSession currentSession = request.getSession();
        currentSession.setAttribute("start",startIndirizzo);
        currentSession.setAttribute("dest",endIndirizzo);
        currentSession.setMaxInactiveInterval(5*60);


        Nodo initialNode = start.chooseStart(startIndirizzo);
        Nodo finalNode = start.chooseEnd(endIndirizzo);

        int rows = 6;
        int cols = 7;

        AStar aStar = new AStar(rows, cols, initialNode, finalNode);
        int[][] blocksArray = new int[][]{{1, 3}, {2, 3}, {3, 3}};

        aStar.setBlocchi(blocksArray);
        aStar.setParking(start.setParking());

        List<Nodo> nodo = start.getNodopark();
        for (Nodo nodoPark: nodo) {
            aStar.setNodoParcheggio(nodoPark);
        }

        List<Nodo> path = aStar.ricercaPercorso();
        for (Nodo node : path) {
            System.out.println(node);
            if(node.isPark()){
                start.getNodoParkIndirizzo(node);
            }
        }

        request.setAttribute("path", path);
        response.sendRedirect("findPath.jsp");

    }
}
