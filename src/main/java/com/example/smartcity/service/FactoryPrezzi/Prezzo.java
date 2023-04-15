package com.example.smartcity.service.FactoryPrezzi;

import com.example.smartcity.model.Bean.BookingBean;
import com.example.smartcity.model.Bean.ParkingBean;

public interface Prezzo {
    double getPrezzo(ParkingBean parkingBean, BookingBean bookingBean);

    int getNumPosti(ParkingBean parkingBean);
}
