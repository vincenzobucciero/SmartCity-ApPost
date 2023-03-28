package com.example.smartcity.model;

import java.io.Serializable;

public class PrenotationBean implements Serializable {

    private int id_Prenotazione;
    private String dataPrenotazione;
    private String orarioInizio;
    private String orarioFine;

    private String emailUtente;
    private int idParcheggio;
    private String targa;

    //Costruttore
    public PrenotationBean(){}


    public int getId_Prenotazione() {
        return id_Prenotazione;
    }

    public void setId_Prenotazione(int id_Prenotazione) {
        this.id_Prenotazione = id_Prenotazione;
    }

    public String getDataPrenotazione() {
        return dataPrenotazione;
    }

    public void setDataPrenotazione(String dataPrenotazione) {
        this.dataPrenotazione = dataPrenotazione;
    }

    public String getOrarioInizio() {
        return orarioInizio;
    }

    public void setOrarioInizio(String orarioInizio) {
        this.orarioInizio = orarioInizio;
    }

    public String getOrarioFine() {
        return orarioFine;
    }

    public void setOrarioFine(String orarioFine) {
        this.orarioFine = orarioFine;
    }

    public String getEmailUtente() {
        return emailUtente;
    }

    public void setEmailUtente(String emailUtente) {
        this.emailUtente = emailUtente;
    }

    public int getIdParcheggio() {
        return idParcheggio;
    }

    public void setIdParcheggio(int idParcheggio) {
        this.idParcheggio = idParcheggio;
    }

    public String getTarga() {
        return targa;
    }

    public void setTarga(String targa) {
        this.targa = targa;
    }
}
