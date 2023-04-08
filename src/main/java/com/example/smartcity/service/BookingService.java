package com.example.smartcity.service;

import com.example.smartcity.model.BookingBean;
import com.example.smartcity.model.BookingDao;

import java.util.List;

public class BookingService {

    public static void Booking(BookingBean bookingBean){
        BookingDao.getIstanza().addBooking(bookingBean);
    }

    public static List<BookingBean> getBooking(String email){
        return BookingDao.getIstanza().getBooking(email);
    }}