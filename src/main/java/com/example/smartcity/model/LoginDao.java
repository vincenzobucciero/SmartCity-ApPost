
package com.example.smartcity.model;

import com.example.smartcity.handler.*;
import com.example.smartcity.service.AuthService;

import java.sql.*;

public class LoginDao {
    private static LoginDao istanza;
    private static final String url = "jdbc:mysql://127.0.0.1:3306/smartCity";
    private static Connection con;
    private LoginDao(){}
    public static LoginDao getIstanza(){
        if (istanza == null){
            istanza = new LoginDao();
        }
        return istanza;
    }


    public static boolean controllaDB(String email,String password) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("SELECT email, password FROM Utenti WHERE email = (?) AND password = (?)");
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet result = stmt.executeQuery();
            return result.next();
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
        return false;
    }

    public static boolean controllaLogin(String email) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("SELECT email FROM Utenti WHERE email = (?)");
            stmt.setString(1, email);
            ResultSet result = stmt.executeQuery();
            return result.next();
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
        return false;
    }


    public UsersBean getUserBean(String email){
        UsersBean usersBean = new UsersBean();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM Utenti WHERE email = (?) ");
            stmt.setString(1, email);
            ResultSet result = stmt.executeQuery();
            if (result.next()) {
                usersBean.setNome(result.getString("nome"));
                usersBean.setCognome(result.getString("cognome"));
                usersBean.setEmail(result.getString("email"));
                usersBean.setPassword(result.getString("password"));
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
        return usersBean;
    }



    //Registrazione
    public boolean addRegistrazione(UsersBean usersBean) {
        try {
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("SELECT email FROM Utenti WHERE email = (?) ");
            stmt.setString(1, usersBean.getEmail());
            ResultSet result = stmt.executeQuery();
            if (result.next()) {
                return false;
            } else {
                PreparedStatement query = con.prepareStatement("INSERT INTO Utenti (nome, cognome, email, password) VALUES(?, ?, ?, ?)");
                query.setString(1, usersBean.getNome());
                query.setString(2, usersBean.getCognome());
                query.setString(3, usersBean.getEmail());
                query.setString(4, usersBean.getPassword());
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


    //Metodo per modificare il nome dell'utente
    public void modifyNomeUtente(String email, String nome){
        try {
            con = DriverManager.getConnection(url, "root", "password");
            PreparedStatement stmt = con.prepareStatement("UPDATE Utenti SET nome=(?) WHERE email = (?)");
            stmt.setString(1, nome);
            stmt.setString(2, email);
            stmt.executeUpdate();
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        finally {
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
