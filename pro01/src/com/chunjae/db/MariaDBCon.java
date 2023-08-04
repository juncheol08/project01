package com.chunjae.db;

import java.net.URI;
import java.sql.*;

public class MariaDBCon implements DBC{
    final String DRIVER = "org.mariadb.jdbc.Driver";
    final String DNS = "localhost";
    final String PORT = "3306";
    final String NAME = "edu";
    final String USER = "root";
    final String PASS = "1234";
    final String URL = "jdbc:mariadb://"+DNS+":"+PORT+"/"+NAME;
    Connection conn = null;


    @Override
    public Connection connect() {

        try {
            Class.forName(DRIVER);
            try {
                conn = DriverManager.getConnection(URL,USER,PASS);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }


        return conn;
    }

    @Override
    public void close(PreparedStatement pstmt, Connection conn) {
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

        try {
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }

    @Override
    public void close(ResultSet rs, PreparedStatement pstmt, Connection conn) {
        try {
            rs.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        try {
            pstmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        try {
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
