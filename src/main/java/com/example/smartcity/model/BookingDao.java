package com.example.smartcity.model;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BookingDao {

    private static BookingDao istanza;
    private static final String url = "jdbc:mysql://127.0.0.1:3306/smartCity";
    private static Connection con;
    private BookingDao(){}
    public static BookingDao getIstanza() {
        if (istanza == null) {
            istanza = new BookingDao();
        }
        return istanza;
    }


    public void addBooking(BookingBean bookingBean) {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement query = con.prepareStatement("INSERT INTO Prenotazione (data_prenotazione, orario_inizio, orario_fine, targaVeicolo, tipoVeicolo, email) " +
                    "VALUES(?, ?, ?, ?, ?, ?)");
            query.setString( 1, bookingBean.getData_prenotazione() );
            query.setString(2, bookingBean.getOrario_inizio());
            query.setString(3, bookingBean.getOrario_fine());
            query.setString(4, bookingBean.getTargaVeicolo());
            query.setString(5, bookingBean.getTipoVeicolo());
            query.setString(6, bookingBean.getEmail());
            query.execute();

            //2023-04-14

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
    }
}
