package com.tnd.dbservice.runner.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;

public class DataSourceConfig {
    private static final Logger LOGGER = LoggerFactory.getLogger(DataSourceConfig.class);
    private static String url = "jdbc:postgresql://ec2-34-193-117-204.compute-1.amazonaws.com:5432/d47t25l90ev62k";
    private static String username = "abvjkjdvtydjjz";
    private static String password = "f7d1a1819d3c3c80915aa617ae92ab8eae025e871b7d0fe4fbfa1c0c0027d707";
    private String host;
    private String port;
    private String database;
    private Properties properties;

    public DataSourceConfig(String url, String username, String password, String host, String port, String database ) {
//        this.url = url;
//        this.username = username;
//        this.password = password;
//        this.host = host;
//        this.port = port;
//        this.database = database;
//
//        properties = new Properties();
//        properties.setProperty("user", username);
//        properties.setProperty("password", password);
//        properties.setProperty("host", host);
//        properties.setProperty("port", port);
//        properties.setProperty("database", database);
    }

    private Connection connection;

    public List<HashMap<String, String>> selectSQL(String query) throws SQLException {
        LOGGER.info("Start selectSQL : {}, DB_CONNECTION: {}", query, url);
        List<HashMap<String, String>> result = new ArrayList<>();
        connection = DriverManager.getConnection(url, username, password);
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(query);
        while(resultSet.next()) {
            HashMap<String, String> mapData = new HashMap<>();
            ResultSetMetaData rsMetaData = resultSet.getMetaData();
            for(int i=1; i <= rsMetaData.getColumnCount(); i++) {
                mapData.put(rsMetaData.getColumnName(i),resultSet.getString(i));
            }
            result.add(mapData);
        }
        connection.close();
        return result;
    }

    public void executeSQL(String query) throws SQLException {
        LOGGER.info("Start executeSQL : {}, DB_CONNECTION: {}", query, url);
        connection = DriverManager.getConnection(url, username, password);
        Statement statement = connection.createStatement();
        statement.executeUpdate(query);
        connection.close();
    }
}
