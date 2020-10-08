package com.tnd.dbservice.runner.config;

import com.tnd.dbservice.runner.handler.DBServiceHandler;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

import java.sql.SQLException;

@Configuration
@PropertySource("classpath:application.properties")
public class DBServiceConfig {
    @Value("${database.username}")
    private String db_username;
    @Value("${database.password}")
    private String db_password;
    @Value("${database.host}")
    private String db_host;
    @Value("${database.port}")
    private String db_port;
    @Value("${database.name}")
    private String db_name;

    @Bean
    public DataSourceConfig dataSourceConfig() throws SQLException {
        return new DataSourceConfig(db_username,db_password,db_host,db_port,db_name);
    }

    @Bean
    public DBServiceHandler dbServiceHandler() {
        return new DBServiceHandler();
    }
}
