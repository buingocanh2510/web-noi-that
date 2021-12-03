package com.webnoithat.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseDAO {
    protected final String jdbcURL;
    protected final String jdbcUsername;
    protected final String jdbcPassword;
    protected Connection jdbcConnection;

    public DatabaseDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) throws ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        this.jdbcURL = jdbcURL;
        this.jdbcUsername = jdbcUsername;
        this.jdbcPassword = jdbcPassword;
    }

    protected void connect() throws SQLException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            jdbcConnection = DriverManager.getConnection(
                    jdbcURL, jdbcUsername, jdbcPassword);
        }
    }

    protected void disconnect() throws SQLException {
        if (jdbcConnection != null && !jdbcConnection.isClosed()) {
            jdbcConnection.close();
        }
    }
}
