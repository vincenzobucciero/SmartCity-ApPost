package com.example.smartcity.model;
import jakarta.activation.MimeTypeParameterList;
import org.apache.commons.lang3.RandomStringUtils;
import com.example.smartcity.service.BookingService;
import com.example.smartcity.service.LogService;
import com.example.smartcity.service.ParkingService;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.text.ParseException;

import static java.util.Calendar.HOUR_OF_DAY;
import static java.util.Calendar.MINUTE;

public class MainTest {
    public static void main(String[] args) throws ParseException {

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

        /*ParkingBean bean = ParkingDao.getIstanza().getParkingBean(2);
        System.out.println(bean.getNomeParcheggio());
        System.out.println(bean.getIndirizzo());
        System.out.println(bean.getPostiAuto());*/

        /*BookingBean bookingBean = new BookingBean();
        bookingBean.setData_prenotazione("31-05-2023");
        bookingBean.setOrario_inizio("11:30");
        bookingBean.setOrario_fine("12:30");
        bookingBean.setTargaVeicolo("ginni");
        bookingBean.setTipoVeicolo("moto");
        bookingBean.setEmail("email@esempio.it");
        BookingService.Booking(bookingBean);*/


       /* List<BookingBean> bookingBeans = BookingDao.getIstanza().getBooking("email@esempio.it");
        System.out.println("\nSize: " + bookingBeans.size());
        for (BookingBean book: bookingBeans) {
            System.out.println(book.getID_prenotazione());
            System.out.println(book.getData_prenotazione());
            System.out.println(book.getOrario_inizio());
            System.out.println(book.getOrario_fine());
            System.out.println(book.getTargaVeicolo());
            System.out.println(book.getTipoVeicolo());
            System.out.println(book.getPrezzo());
        }*/


        /*String c = RandomStringUtils.randomAlphabetic(7);
        System.out.println(c);*/

        //BookingDao.getIstanza().deleteBooking("xSRTAJQ");



        /*String mydate = "2023-04-11";
        int num = StatisticDao.getIstanza().getStatistiche("Skyline Parking", "Furgone", mydate);
        System.out.println("stat: " + num);*/

        BookingBean bookingBean = BookingService.getBookingBean("ZznBOms");
        String oraInizio = bookingBean.getOrario_inizio();
        String oraFine = bookingBean.getOrario_fine();

        System.out.println("Ora inizio " + oraInizio);
        System.out.println("Ora fine " + oraFine);

       /* String sDate6 = "23:37";
        SimpleDateFormat formatter = new SimpleDateFormat("HH:mm");
        Date date6 = formatter.parse(sDate6);
        System.out.println(sDate6+"\t"+ date6);
        System.out.println("Date: " + ft.format(date6));*/

        SimpleDateFormat formatter = new SimpleDateFormat("HH:mm");

        Date inizio = formatter.parse(oraInizio);
        Date fine = formatter.parse(oraFine);
        System.out.println("Prova\n" + inizio+"\t"+ fine);

        Calendar c = Calendar.getInstance(TimeZone.getTimeZone("Europe/Rome"), Locale.ITALY);
        Calendar d = Calendar.getInstance(TimeZone.getTimeZone("Europe/Rome"), Locale.ITALY);
        c.setTime(inizio);
        d.setTime(fine);

        System.out.println(c.get(HOUR_OF_DAY)+":"+ c.get(MINUTE));
        System.out.println(d.get(HOUR_OF_DAY)+":"+ d.get(MINUTE));

        System.out.println("ora Fine - ora Inizio " + (d.get(HOUR_OF_DAY) - c.get(HOUR_OF_DAY)));
        System.out.println("minuti fine - minuti Inizio in ore " + (double)(d.get(MINUTE) - c.get(MINUTE))/60);

        double ore = d.get(HOUR_OF_DAY) - c.get(HOUR_OF_DAY);
        double minuti = (double)(d.get(MINUTE) - c.get(MINUTE))/60;
        double tot = 0;

        if(minuti > 0){
            tot = 2*ore + 2;
        }
        else {
            tot = 2*ore;
        }

        System.out.println("totale: " + tot);

    }
}