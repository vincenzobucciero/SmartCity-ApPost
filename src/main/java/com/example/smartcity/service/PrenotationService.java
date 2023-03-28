package com.example.smartcity.service;

import com.example.smartcity.model.*;

import java.util.List;

public class PrenotationService {
    public static List<PrenotationBean> getPrenotation(){
        PrenotationDao prenotationDao = PrenotationDao.getIstanza();

        List<PrenotationBean> prenotationBean = prenotationDao.getPrenotazioni();

        return prenotationBean;
    }
    public static boolean prenotato(PrenotationBean prenotationBean){
        return PrenotationDao.getIstanza().addPrenotazione(prenotationBean);
    }
}
