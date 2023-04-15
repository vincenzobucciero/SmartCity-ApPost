package com.example.smartcity.model.DAO;

import com.example.smartcity.model.Bean.BookingBean;

import java.util.List;

public class ProvaMain {
    public static void main(String[] args) {

        List<BookingBean> bookingBeans = BookingDao.getListBooking();
        for(BookingBean bookingBean: bookingBeans){
            //if(bookingBean.getData_prenotazione() == dataNow)
            System.out.println(bookingBean.getData_prenotazione());
        }

    }
}
