package com.example.smartcity.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ParkingDao {

    private static ParkingDao istanza;
    private final String url = "jdbc:mysql://127.0.0.1:3306/smartCity";

    Connection con;
    private ParkingDao(){}
    public static ParkingDao getIstanza(){
        if (istanza == null){
            istanza = new ParkingDao();
        }
        return istanza;
    }

    public List<ParkingBean> getParkings(){
        List<ParkingBean> list = new ArrayList<ParkingBean>();

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("SELECT nomeParcheggio, indirizzo, tariffaAF, tariffaM, postiAuto, postiFurgone, postiMoto  FROM Parcheggio ");
            ResultSet resultSet = stmt.executeQuery();
            while(resultSet.next()){
                ParkingBean parkingBean = new ParkingBean();
                parkingBean.setNomeParcheggio(resultSet.getString(1));
                parkingBean.setIndirizzo(resultSet.getString(2));
                parkingBean.setTariffaAF(resultSet.getDouble(3));
                parkingBean.setTariffaM(resultSet.getDouble(4));
                parkingBean.setPostiAuto(resultSet.getInt(5));
                parkingBean.setPostiFurgone(resultSet.getInt(6));
                parkingBean.setPostiMoto(resultSet.getInt(7));

                list.add(parkingBean);
            }
            return list;
        }
        catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if(con != null)
                    con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    public ParkingBean getParkingBean(String nomeParcheggio){
        ParkingBean parkingBean = new ParkingBean();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM Parcheggio WHERE nomeParcheggio = (?) ");
            stmt.setString(1, nomeParcheggio);
            ResultSet result = stmt.executeQuery();
            if (result.next()) {
                parkingBean.setNomeParcheggio(result.getString("nomeParcheggio"));
                parkingBean.setIndirizzo(result.getString("indirizzo"));
                parkingBean.setTariffaAF(result.getDouble("tariffaAF"));
                parkingBean.setTariffaM(result.getDouble("tariffaM"));
                parkingBean.setPostiAuto(result.getInt("postiAuto"));
                parkingBean.setPostiFurgone(result.getInt("postiFurgone"));
                parkingBean.setPostiMoto(result.getInt("postiMoto"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (con != null)
                    con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return parkingBean;
    }


    /*public int getStatistiche(String nome, String tipoVeicolo, String dataPrec, String dataSucc){
        int countStat = 0;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("SELECT count(*)numeroPrenotati FROM Prenotazione " +
                    "WHERE tipoVeicolo = (?) and nomeParcheggio = (?) and " +
                    "YEAR(data_prenotazione) = YEAR(CURDATE()) and MONTH(data_prenotazione) between (?) and (?)" +
                    "GROUP BY tipoVeicolo");
            stmt.setString(1, tipoVeicolo);
            stmt.setString(2, nome);
            stmt.setString(3, dataPrec);
            stmt.setString(4, dataSucc);
            ResultSet result = stmt.executeQuery();
            if (result.next()) {
                countStat = result.getInt("numeroPrenotati");
                System.out.println(" " + countStat);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (con != null)
                    con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return countStat;
    }*/


    //Metodo per le statistiche
    public double getStatistiche(String nome, String tipoVeicolo, String mese, String settimana){
        double countStat = 0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("SELECT count(*)/7 numeroPrenotati FROM Prenotazione " +
                    "WHERE tipoVeicolo = (?) and " +
                    "      nomeParcheggio = (?) and " +
                    "      YEAR(data_prenotazione) = YEAR(CURDATE()) and " +
                    "      MONTH(data_prenotazione) = (?) and " +
                    "      WEEK(data_prenotazione) - WEEK(DATE_FORMAT(data_prenotazione,'%Y-%m-01')) + 1 = (?)" +
                    "GROUP BY tipoVeicolo");
            stmt.setString(1, tipoVeicolo);
            stmt.setString(2, nome);
            stmt.setString(3, mese);
            stmt.setString(4, settimana);
            ResultSet result = stmt.executeQuery();
            if (result.next()) {
                countStat = result.getDouble("numeroPrenotati");
                System.out.println(" " + countStat);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (con != null)
                    con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return countStat;
    }


}
