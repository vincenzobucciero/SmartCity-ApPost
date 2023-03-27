package com.example.smartcity.model;

import com.example.smartcity.handler.Handler;
import com.example.smartcity.handler.MailHandler;
import com.example.smartcity.handler.PasswordHandler;
import com.example.smartcity.handler.RoleHandler;
import com.example.smartcity.service.AuthService;
import com.example.smartcity.service.LogService;
import com.example.smartcity.service.ModifyService;
import com.example.smartcity.service.ParkingService;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class MainTest {
    public static void main(String[] args) throws IOException{


        /*AccessoLogin accessoLogin = LogService.logHandler("admin@admin.com","admin");
        switch (accessoLogin) {
            case UTENTE_INESISTENTE:
                System.out.println("Non sei registrato");
                break;
            case PASSWORD_ERRATA:
                System.out.println("password no");
                break;
            case SUCCESSO:
                System.out.println("dentro!");
                break;
            default:
                System.out.println("default");
                break;
        }*/


        /*
        List<ParkingBean> list = ParkingService.getAllParkings();
        for (ParkingBean bean:list) {
            System.out.println(bean.getIdParcheggio());
            System.out.println(bean.getNomeParcheggio());
            System.out.println(bean.getIndirizzo());
            System.out.println(bean.getNumPosti());
        }*/
        //ModifyService.modifyTariffa(1, 1.7);



        /*ParkingBean parkingBean = ParkingDao.getIstanza().getParkingBean(1);
        System.out.println(parkingBean.getNomeParcheggio());*/
    }
}
