package com.example.smartcity.service.Factory;

import com.example.smartcity.model.ParkingBean;
import com.example.smartcity.service.ParkingService;

import java.util.List;

public class MainFactory
{
    public static void main( String arg[] )
    {

        /*
        ParkingBean parkingBean = ParkingService.getParkingBean("San Giorgio  ");
        FactoryPosto factoryAuto = new FactoryPostoAuto();
       */


        FactoryPosto factoryMoto = new FactoryPostoMoto();
        //Posto moto = factoryMoto.getPosto();

        FactoryPosto factoryFurgone = new FactoryPostoFurgone();
        //Posto furgone = factoryFurgone.getPosto();


    }
}
