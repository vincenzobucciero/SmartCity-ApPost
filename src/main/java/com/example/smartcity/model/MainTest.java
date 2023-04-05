package com.example.smartcity.model;

import com.example.smartcity.service.BookingService;
import com.example.smartcity.service.LogService;
import com.example.smartcity.service.ParkingService;

import java.io.IOException;
import java.util.List;

public class MainTest {
    public static void main(String[] args) throws IOException{

        //LoginDao loginDao = new LoginDao();
        //AccessoLogin accessoLogIn = loginDao.logIn("cam", "dem");

        /*if(DB.getIstanza().addRegistrazione("camilla","dema", "patata", "ciaociao")){
            System.out.println("Benvenuto");
        }
        else
            System.out.println("Sei già registrato");

*/

        /*UsersBean usersBean = new UsersBean();
        usersBean.setEmail("email@esempio.it");
        usersBean.setPassword("jghvhgv");
        AccessoLogin accessoLogIn = LoginDao.getIstanza().logIn(usersBean);*/

        /*AccessoLogin accessoLogIn = LogService.logHandler("email@esempio.it", "ciao");
        switch (accessoLogIn) {
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

        ParkingBean bean = ParkingDao.getIstanza().getParkingBean(2);
        System.out.println(bean.getNomeParcheggio());
        System.out.println(bean.getIndirizzo());
        System.out.println(bean.getPostiAuto());

        /*BookingBean bookingBean = new BookingBean();
        bookingBean.setData_prenotazione("31-05-2023");
        bookingBean.setOrario_inizio("11:30");
        bookingBean.setOrario_fine("12:30");
        bookingBean.setTargaVeicolo("ginni");
        bookingBean.setTipoVeicolo("moto");
        bookingBean.setEmail("email@esempio.it");

        BookingService.Booking(bookingBean);*/
    }
}
