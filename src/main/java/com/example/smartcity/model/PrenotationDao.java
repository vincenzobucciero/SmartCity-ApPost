package com.example.smartcity.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PrenotationDao {

    private static PrenotationDao istanza;

    private final String url = "jdbc:mysql://127.0.0.1:3306/smartCity";

    Connection con;

    private PrenotationDao() {
    }

    public static PrenotationDao getIstanza() {
        if (istanza == null) {
            istanza = new PrenotationDao();
        }
        return istanza;
    }


    public List<PrenotationBean> getPrenotazioni() {
        List<PrenotationBean> list = new ArrayList<PrenotationBean>();
        try {
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("SELECT ID_prenotazione,data_prenotazione,orario_inizio," +
                    "orario_fine,email_utente,ID_parcheggio,targaVeicolo  FROM Prenotazione");
            ResultSet resultSet = stmt.executeQuery();
            while (resultSet.next()) {
                PrenotationBean prenotationBean = new PrenotationBean();
                prenotationBean.setId_Prenotazione(resultSet.getInt(1));
                prenotationBean.setDataPrenotazione(String.valueOf(resultSet.getDate(2)));
                prenotationBean.setOrarioInizio(String.valueOf(resultSet.getTime(3)));
                prenotationBean.setOrarioFine(String.valueOf(resultSet.getTime(4)));
                prenotationBean.setEmailUtente(resultSet.getString(5));
                prenotationBean.setIdParcheggio(resultSet.getInt(6));
                prenotationBean.setTarga(resultSet.getString(7));
                list.add(prenotationBean);
            }
            return list;

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null)
                    con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        return list;
    }


    public PrenotationBean getPrenotationBean(int idPrenot) {
        PrenotationBean prenotationBean = new PrenotationBean();
        try {
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM Prenotazione WHERE ID_prenotazione = (?) "); //Forse pero si deve fare con l'emai dell'utente
            stmt.setInt(1, idPrenot);
            ResultSet result = stmt.executeQuery();
            if (result.next()) {
                prenotationBean.setDataPrenotazione(String.valueOf(result.getDate("dataPrenotazione")));
                prenotationBean.setOrarioInizio(String.valueOf(result.getTime("oraInizio")));
                prenotationBean.setOrarioFine(String.valueOf(result.getTime("oraFine")));
                prenotationBean.setEmailUtente(result.getString("email"));
                prenotationBean.setIdParcheggio(result.getInt("idParking"));
                prenotationBean.setTarga(result.getString("targa"));

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null)
                    con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return prenotationBean;
    }

    //Prenotazione
    public boolean addPrenotazione(PrenotationBean prenotationBean) {
        try {
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("SELECT email_utente FROM Prenotazione WHERE email_utente = (?) ");
            stmt.setString(1, prenotationBean.getEmailUtente());
            ResultSet result = stmt.executeQuery();
            if (result.next()) {
                return false;
            } else {
                PreparedStatement query = con.prepareStatement("INSERT INTO Prenotazione (ID_prenotazione, data_prenotazione, orario_inizio, orario_fine, email_utente, ID_parcheggio,targaVeicolo) " +
                        "VALUES (?, ?, ?, ?, ?, ?, ?)");
                query.setInt(1, prenotationBean.getId_Prenotazione());
                query.setString(2, prenotationBean.getDataPrenotazione());
                query.setString(3, prenotationBean.getOrarioInizio());
                query.setString(4, prenotationBean.getOrarioFine());
                query.setString(5, prenotationBean.getEmailUtente());
                query.setInt(6, prenotationBean.getIdParcheggio());
                query.setString(7,prenotationBean.getTarga());
                query.execute();
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null)
                    con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }


}