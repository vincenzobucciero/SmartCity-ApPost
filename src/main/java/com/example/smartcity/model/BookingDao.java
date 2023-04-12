package com.example.smartcity.model;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

import static java.util.Calendar.HOUR_OF_DAY;
import static java.util.Calendar.MINUTE;

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
            PreparedStatement query = con.prepareStatement("INSERT INTO Prenotazione (Id_prenotazione, data_prenotazione, orario_inizio, orario_fine, targaVeicolo, tipoVeicolo, email, prezzo, pagamento, nomeParcheggio) " +
                    "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

            query.setString(1, bookingBean.getID_prenotazione());
            query.setString( 2, bookingBean.getData_prenotazione() );
            query.setString(3, bookingBean.getOrario_inizio());
            query.setString(4, bookingBean.getOrario_fine());
            query.setString(5, bookingBean.getTargaVeicolo());
            query.setString(6, bookingBean.getTipoVeicolo());
            query.setString(7, bookingBean.getEmail());
            query.setDouble(8, bookingBean.getPrezzo());
            query.setString(9, bookingBean.getPagamento());
            query.setString(10, bookingBean.getNomeParcheggio());

            query.execute();

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


    //Ritorna tutte le prenotazioni fatte nel tempo da un certo utente
    public List<BookingBean> getBooking(String email){

        List<BookingBean> list = new ArrayList<BookingBean>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM Prenotazione WHERE email = (?) ");
            stmt.setString(1, email);
            ResultSet result = stmt.executeQuery();
            list = new ArrayList<>();
            while (result.next()) {
                BookingBean bookingBean = new BookingBean();
                bookingBean.setID_prenotazione(result.getString("Id_prenotazione"));
                bookingBean.setData_prenotazione(result.getString("data_prenotazione"));
                bookingBean.setOrario_inizio(result.getString("orario_inizio"));
                bookingBean.setOrario_fine(result.getString("orario_fine"));
                bookingBean.setTargaVeicolo(result.getString("targaVeicolo"));
                bookingBean.setTipoVeicolo(result.getString("tipoVeicolo"));
                bookingBean.setEmail(result.getString("email"));
                bookingBean.setPrezzo(result.getDouble("prezzo"));
                bookingBean.setPagamento(result.getString("pagamento"));
                bookingBean.setNomeParcheggio(result.getString("nomeParcheggio"));

                //System.out.println(bookingBean.getID_prenotazione() + " "+ bookingBean.getData_prenotazione());

                list.add(bookingBean);

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

        return list;
    }




    //Ritorna una specifica prenotazione dato il suo ID
    public BookingBean getBookingBean(String id){
        BookingBean bookingBean = new BookingBean();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM Prenotazione WHERE Id_prenotazione = (?) ");
            stmt.setString(1, id);
            ResultSet result = stmt.executeQuery();
            if (result.next()) {
                bookingBean.setID_prenotazione(result.getString("Id_prenotazione"));
                bookingBean.setData_prenotazione(result.getString("data_prenotazione"));
                bookingBean.setOrario_inizio(result.getString("orario_inizio"));
                bookingBean.setOrario_fine(result.getString("orario_fine"));
                bookingBean.setTargaVeicolo(result.getString("targaVeicolo"));
                bookingBean.setTipoVeicolo(result.getString("tipoVeicolo"));
                bookingBean.setEmail(result.getString("email"));
                bookingBean.setPrezzo(result.getDouble("prezzo"));
                bookingBean.setPagamento(result.getString("pagamento"));
                bookingBean.setNomeParcheggio(result.getString("nomeParcheggio"));

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
        return bookingBean;
    }


    //Cancella la prenotazione effettuata dall'utente
    public void deleteBooking(String idPrenotazione){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("DELETE FROM Prenotazione WHERE Id_prenotazione = (?)");
            stmt.setString(1,idPrenotazione);
            stmt.execute();
        }
        catch (SQLException e){
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } finally {
            try{
                if (con!=null)
                    con.close();
            }
            catch (SQLException e){
                e.printStackTrace();
            }
        }
    }


    public double getTotPrice(double price, BookingBean bookingBean){
        String oraInizio = bookingBean.getOrario_inizio();
        String oraFine = bookingBean.getOrario_fine();

        SimpleDateFormat formatter = new SimpleDateFormat("HH:mm");

        Date inizio = new Date();
        Date fine = new Date();
        double tot = 0;
        try {
            inizio = formatter.parse(oraInizio);
            fine = formatter.parse(oraFine);

            Calendar inizioDate = Calendar.getInstance(TimeZone.getTimeZone("Europe/Rome"), Locale.ITALY);
            Calendar fineDate = Calendar.getInstance(TimeZone.getTimeZone("Europe/Rome"), Locale.ITALY);
            inizioDate.setTime(inizio);
            fineDate.setTime(fine);

            double ore = fineDate.get(HOUR_OF_DAY) - inizioDate.get(HOUR_OF_DAY);
            double minuti = (double)(fineDate.get(MINUTE) - inizioDate.get(MINUTE))/60;


            if(minuti > 0){
                tot = price*ore + price;
            }
            else {
                tot = price*ore;
            }

            System.out.println("totale: " + tot);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }


        return tot;
    }


}
