package com.tnd.dbservice.sdk.api.impl;

import com.tnd.common.api.client.service.AbstractService;
import com.tnd.common.api.common.base.BaseResponse;
import com.tnd.dbservice.common.constants.Methods;
import com.tnd.dbservice.common.representation.DBServiceRequest;
import com.tnd.dbservice.common.representation.DBServiceResponse;
import com.tnd.dbservice.sdk.api.DBServiceSdkClient;


public class DBServiceSdkClientImpl extends AbstractService implements DBServiceSdkClient {
    public DBServiceSdkClientImpl(String host, int port, int appId) {
        super(host, port, appId);
    }

    @Override
    public BaseResponse<DBServiceResponse.QueryResult> selectSQL(String query) {
        DBServiceRequest request = new DBServiceRequest(query);
        return client.sendRequest(Methods.SELECT_SQL, request);
    }

    @Override
    public BaseResponse<Boolean> executeSQL(String query) {
        DBServiceRequest request = new DBServiceRequest(query);
        return client.sendRequest(Methods.EXECUTE_SQL, request);
    }
}
