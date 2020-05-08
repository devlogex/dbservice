package com.tnd.dbservice.runner.handler;

import com.google.gson.Gson;
import com.tnd.common.api.common.base.BaseRequest;
import com.tnd.common.api.common.base.BaseResponse;
import com.tnd.common.api.server.BaseHandler;
import com.tnd.common.api.server.service.annotation.HandlerService;
import com.tnd.common.api.server.service.annotation.HandlerServiceClass;
import com.tnd.dbservice.common.constants.Methods;
import com.tnd.dbservice.common.representation.DBServiceRequest;
import com.tnd.dbservice.common.representation.DBServiceResponse;
import com.tnd.dbservice.runner.config.DataSourceConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

@HandlerServiceClass
public class DBServiceHandler implements BaseHandler {
    private static final Logger LOGGER = LoggerFactory.getLogger(DBServiceHandler.class);
    private static Gson gson = new Gson();

    @Autowired
    private DataSourceConfig dataSourceConfig;

    @HandlerService(method = Methods.SELECT_SQL)
    public BaseResponse<DBServiceResponse.QueryResult> selectSQL(BaseRequest<DBServiceRequest> request) throws SQLException {
        LOGGER.info("Receive request selectSQL: {}", gson.toJson(request));
        DBServiceResponse.QueryResult response = new DBServiceResponse.QueryResult();
        try {
            List<HashMap<String, String>> data = dataSourceConfig.selectSQL(request.getData().getQuery());
            response.setData(data);
            response.setSuccess(true);
            LOGGER.info("Success request, response: {}", gson.toJson(response));
            return new BaseResponse<>(response);
        } catch (SQLException e) {
            LOGGER.error("Failed request selectSQL: {}", gson.toJson(request));
            throw e;
        }
    }

    @HandlerService(method = Methods.EXECUTE_SQL)
    public BaseResponse<Boolean> executeSQL(BaseRequest<DBServiceRequest> request) throws SQLException {
        LOGGER.info("Receive request executeSQL: {}", gson.toJson(request));
        try {
            dataSourceConfig.executeSQL(request.getData().getQuery());
            LOGGER.info("Success request: {}", gson.toJson(request));
            return new BaseResponse<>(true);
        } catch (SQLException e) {
            LOGGER.error("Failed request selectSQL: {}", gson.toJson(request));
            throw e;
        }
    }
}
