package com.example.smartcity.model;

import java.sql.*;

public class ModifyUserDao {

    private static ModifyUserDao istanza;
    private final String url = "jdbc:mysql://127.0.0.1:3306/smartCity";

    Connection con;
    private ModifyUserDao(){}
    public static ModifyUserDao getIstanza() {
        if (istanza == null) {
            istanza = new ModifyUserDao();
        }
        return istanza;

    }


    public void modifyNome(String email, String nome) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("UPDATE Utenti SET nome=(?) WHERE email = (?)");
            stmt.setString(1, nome);
            stmt.setString(2, email);
            stmt.executeUpdate();
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

    public void modifyCognome(String email, String cognome) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("UPDATE Utenti SET cognome=(?) WHERE email = (?)");
            stmt.setString(1, cognome);
            stmt.setString(2, email);
            stmt.executeUpdate();
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


    public void modifyPassword(String email, String password) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("UPDATE Utenti SET password=(?) WHERE email = (?)");
            stmt.setString(1, password);
            stmt.setString(2, email);
            stmt.executeUpdate();
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

}
