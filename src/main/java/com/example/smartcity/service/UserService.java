package com.example.smartcity.service;

import com.example.smartcity.model.LoginDao;

public class UserService {

    public static void modifyNomeUtente(String email, String nome){ LoginDao.getIstanza().modifyNomeUtente(email, nome);}

}
