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

    public List<ParkingBean> getParkings() {
        List<ParkingBean> list = new ArrayList<ParkingBean>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("SELECT ID_parcheggio, nomeParcheggio, indirizzo, numPosti, tariffa FROM Parcheggio");
            ResultSet resultSet = stmt.executeQuery();
            while (resultSet.next()){
                ParkingBean parkingBean = new ParkingBean();
                parkingBean.setIdParcheggio(resultSet.getInt(1));
                parkingBean.setNomeParcheggio(resultSet.getString(2));
                parkingBean.setIndirizzo(resultSet.getString(3));
                parkingBean.setNumPosti(resultSet.getInt(4));
                parkingBean.setTariffa(resultSet.getDouble(5));
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
                if (con != null)
                    con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        return list;
    }

    public ParkingBean getParkingBean(int id){
        ParkingBean parkingBean = new ParkingBean();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM Parcheggio WHERE ID_parcheggio = (?) ");
            stmt.setInt(1, id);
            ResultSet result = stmt.executeQuery();
            if (result.next()) {
                parkingBean.setNomeParcheggio(result.getString("nomeParcheggio"));
                parkingBean.setIndirizzo(result.getString("indirizzo"));
                parkingBean.setTariffa(result.getDouble("tariffa"));
                parkingBean.setNumPosti(result.getInt("numPosti"));
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

}
