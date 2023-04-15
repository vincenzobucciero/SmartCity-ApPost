package com.example.smartcity.service.FactoryPrezzi;

import com.example.smartcity.model.Bean.BookingBean;
import com.example.smartcity.model.Bean.ParkingBean;
import com.example.smartcity.model.DAO.BookingDao;

public class PrezzoFurgone implements Prezzo {
    public double getPrezzo(ParkingBean parkingBean, BookingBean bookingBean){
        return BookingDao.getTotPrice(parkingBean.getTariffaAF(), bookingBean);
    }

    public int getNumPosti(ParkingBean parkingBean) {
        return parkingBean.getPostiFurgone();
    }
}
