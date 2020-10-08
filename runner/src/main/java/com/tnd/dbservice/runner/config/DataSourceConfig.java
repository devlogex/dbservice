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

    private Connection connection;

    public DataSourceConfig(String username, String password, String host, String port, String database ) throws SQLException {
        String url = String.format("jdbc:postgresql://%s:%s/%s", host, port, database);
        connection = DriverManager.getConnection(url, username, password);
    }

    public List<HashMap<String, String>> selectSQL(String query) throws SQLException {
        LOGGER.info("Start selectSQL : {}, DB_CONNECTION: {}", query);
        List<HashMap<String, String>> result = new ArrayList<>();
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
        return result;
    }

    public void executeSQL(String query) throws SQLException {
        LOGGER.info("Start executeSQL : {}, DB_CONNECTION: {}", query);
        Statement statement = connection.createStatement();
        statement.executeUpdate(query);
    }
}
