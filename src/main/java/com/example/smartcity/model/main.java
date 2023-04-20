package com.example.smartcity.model;

import com.example.smartcity.model.DAO.ParkingDao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.temporal.IsoFields;
import java.util.Calendar;
import java.util.Date;

public class main {
    public static void main(String[] args) throws ParseException {

        SimpleDateFormat sdf = new SimpleDateFormat( "2023-03-02" );
        Date date = sdf.parse( "2023-03-02" );
        Calendar calendar = Calendar.getInstance();
        calendar.setTime( date );
        int week = calendar.get( Calendar.WEEK_OF_YEAR );
        System.out.println( "W: " + week );

        LocalDate ld = LocalDate.parse( "2023-01-02" ) ;
        int weekOfWeekBasedYear = ld.get( IsoFields.WEEK_OF_WEEK_BASED_YEAR ) ;
        int yearOfWeekBasedYear = ld.get( IsoFields.WEEK_BASED_YEAR ) ;
        System.out.println(weekOfWeekBasedYear);
        System.out.println(yearOfWeekBasedYear);

        /*for (int i = 1; i < 6 ; i++) {
            double value = ParkingDao.getStatisticheAccessi("Neapolis Parking", "Auto", 03, i);
            //System.out.println("EEE: " + value);

        }*/
    }
}
