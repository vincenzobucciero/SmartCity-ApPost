package com.example.smartcity.model.DAO;

import com.example.smartcity.model.Bean.BookingBean;
import com.example.smartcity.model.Bean.UserBean;

import java.util.List;

public class ProvaMain {
    public static void main(String[] args) {

        List<UserBean> userBeans = UserDao.getListUsers();
        for(UserBean userBean:  userBeans){
            System.out.println("nome: " + userBean.getNome());
            System.out.println("cognome: " + userBean.getCognome());
            System.out.println("email: " + userBean.getEmail());
            System.out.println("password: " + userBean.getPassword());
            System.out.println("\n");
        }



    }
}
