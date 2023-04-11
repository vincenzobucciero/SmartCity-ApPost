package com.example.smartcity.service;

import com.example.smartcity.model.ModifyUserDao;

public class ModifyUserService {

    public static void modifyNome(String email, String nome){ ModifyUserDao.getIstanza().modifyNome(email, nome);}

    public static void modifyCognome(String email, String cognome){ModifyUserDao.getIstanza().modifyCognome(email, cognome);}

    public static void modifyPassword(String email, String password){ModifyUserDao.getIstanza().modifyPassword(email, password);}



}