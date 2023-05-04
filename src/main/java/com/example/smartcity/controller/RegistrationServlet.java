package com.example.smartcity.controller;

import com.example.smartcity.model.Bean.UserBean;
import com.example.smartcity.model.DAO.UserDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "RegistrationServlet", value = "/registration")
public class RegistrationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("registrazione.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String sesso = request.getParameter("sesso");
        String telefono = request.getParameter("telefono");
        String dataNascita = request.getParameter("dataNascita");

        UserBean userBean = new UserBean();

        HttpSession vecchiaSession = request.getSession();

        if (vecchiaSession != null){
            vecchiaSession.invalidate();
        }
        HttpSession newSession = request.getSession();
        newSession.setMaxInactiveInterval(20 * 60);

        newSession.setAttribute("userBean", userBean);
        newSession.setAttribute("isLog", 1);
        request.setAttribute("loggato", 1);

        userBean.setNome(name);
        userBean.setCognome(surname);
        userBean.setEmail(email);
        userBean.setPassword(password);
        userBean.setSesso(sesso);
        userBean.setTelefono(telefono);
        userBean.setDataNascita(dataNascita);
        boolean risultato = UserDao.addRegistrazione(userBean);

        if( risultato ) {
            newSession.setAttribute("userBean", userBean);
            request.getRequestDispatcher("userHomePage.jsp").forward(request, response);
        }
        else{
            newSession.setAttribute("risultato", risultato);
            request.getRequestDispatcher("registrazione.jsp").forward(request, response);
        }
    }

}