package com.example.smartcity.model.DAO;

    import java.sql.Connection;
    import java.sql.DriverManager;
    import java.sql.SQLException;
    public class DatabaseConnection {
        private static DatabaseConnection instance;
        private Connection connection;

        private DatabaseConnection() throws SQLException {
            try {
                Class.forName( "com.mysql.cj.jdbc.Driver" );
                String url = "jdbc:mysql://127.0.0.1:3306/smartCity";
                this.connection = DriverManager.getConnection( url, "root", "password");
            } catch ( ClassNotFoundException ex ) {
                System.out.println( "Database Connection Creation Failed : " + ex.getMessage() );
            }
        }

        public Connection getConnection() {
            return connection;
        }

        public static DatabaseConnection getInstance() throws SQLException {
            if ( instance == null ) {
                instance = new DatabaseConnection();
            }
            return instance;
        }
    }