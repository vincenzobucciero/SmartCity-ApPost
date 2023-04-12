package com.example.smartcity.service;

import com.example.smartcity.model.BookingBean;
import com.example.smartcity.model.BookingDao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import static java.util.Calendar.HOUR_OF_DAY;
import static java.util.Calendar.MINUTE;

public class BookingService {

    public static void Booking(BookingBean bookingBean){
        BookingDao.getIstanza().addBooking(bookingBean);
    }

    public static List<BookingBean> getBooking(String email){
        return BookingDao.getIstanza().getBooking(email);
    }

    public static BookingBean getBookingBean(String id){return  BookingDao.getIstanza().getBookingBean(id);}

    public static void deleteBooking(String idPrenotazione){
        BookingDao.getIstanza().deleteBooking(idPrenotazione);
    }


    public static double getTotPrice(double price, BookingBean bookingBean) {
        return BookingDao.getIstanza().getTotPrice(price, bookingBean);
    }
}