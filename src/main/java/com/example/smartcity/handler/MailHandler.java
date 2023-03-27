package com.example.smartcity.handler;

import com.example.smartcity.model.AccessoLogin;
import com.example.smartcity.model.LoginDao;
import com.example.smartcity.model.UsersBean;

public class MailHandler extends Handler{

    private String email;
    public MailHandler(String email){
        this.email = email;
    }

    public AccessoLogin handle(String email, String password){
        if(!LoginDao.controllaLogin(email)){
            System.out.println("Non sei registrato");
            System.out.println("Registrati ora");
            return AccessoLogin.UTENTE_INESISTENTE;
        }
        return handlerNext(email, password);
    }
}