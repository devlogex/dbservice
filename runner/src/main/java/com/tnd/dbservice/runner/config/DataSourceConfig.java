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
    private static String url = "jdbc:postgresql://ec2-34-230-231-71.compute-1.amazonaws.com:5432/dcbibdkk5ajgpc";
    private static String username = "jnibiqxvvluloc";
    private static String password = "dd36ba180eac63bc23d559675b6dd46e7109a3c70703a70cbad8c9efdc188805";
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
