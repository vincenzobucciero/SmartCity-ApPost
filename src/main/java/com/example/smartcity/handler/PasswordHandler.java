package com.example.smartcity.handler;

import com.example.smartcity.model.AccessoLogin;
import com.example.smartcity.model.LoginDao;
import com.example.smartcity.model.UsersBean;

public class PasswordHandler extends Handler{

    private String email;
    private String password;

    public PasswordHandler(String email,String password){
        this.email = email;
        this.password = password;
    }


    public AccessoLogin handle(String email,String password){
        if(!LoginDao.controllaDB(email,password)){
            System.out.println("Password errata");
            System.out.println("Riprova");
            return AccessoLogin.PASSWORD_ERRATA;
        }
        return handlerNext(email, password);
    }

}