package com.example.smartcity.model;

import com.example.smartcity.handler.Handler;
import com.example.smartcity.handler.MailHandler;
import com.example.smartcity.handler.PasswordHandler;
import com.example.smartcity.handler.RoleHandler;
import com.example.smartcity.service.AuthService;
import com.example.smartcity.service.ModifyService;
import com.example.smartcity.service.ParkingService;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class MainTest {
    public static void main(String[] args) throws IOException{

        ParkingBean parkingBean = ParkingDao.getIstanza().getParkingBean(1);
        System.out.println(parkingBean.getNomeParcheggio());
    }
}
