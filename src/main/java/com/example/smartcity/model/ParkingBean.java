package com.example.smartcity.model;

import java.io.Serializable;

public class ParkingBean implements Serializable {

    private int ID_parcheggio;
    private String nomeParcheggio;
    private String indirizzo;
    private int numPosti;
    private double tariffa;

    public ParkingBean(){}

    public int getIdParcheggio() {
        return ID_parcheggio;
    }

    public void setIdParcheggio(int ID_parcheggio) {
        this.ID_parcheggio = ID_parcheggio;
    }

    public String getNomeParcheggio() {
        return nomeParcheggio;
    }

    public void setNomeParcheggio(String nomeParcheggio) {
        this.nomeParcheggio = nomeParcheggio;
    }

    public String getIndirizzo() {
        return indirizzo;
    }

    public void setIndirizzo(String indirizzo) {
        this.indirizzo = indirizzo;
    }

    public int getNumPosti() {
        return numPosti;
    }

    public void setNumPosti(int numPosti) {
        this.numPosti = numPosti;
    }

    public double getTariffa() {return tariffa;}

    public void setTariffa(double tariffa) {this.tariffa = tariffa;}
}
