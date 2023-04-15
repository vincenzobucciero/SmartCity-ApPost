package com.example.smartcity.service.FactoryPrezzi;

public class FactoryPrezzo {

    public Prezzo getTotale(VeicoliEnum type) {

        switch (type) {
            case Auto:
                return new PrezzoAuto();
            case Furgone:
                return new PrezzoFurgone();
            case Moto:
                return new PrezzoMoto();
            default:
                return null;
        }
    }
}
