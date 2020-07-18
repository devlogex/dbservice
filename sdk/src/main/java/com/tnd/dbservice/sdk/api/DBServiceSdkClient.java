package com.tnd.dbservice.sdk.api;

import com.tnd.common.api.common.base.BaseResponse;
import com.tnd.dbservice.common.representation.DBServiceResponse;

import java.io.Serializable;

public interface DBServiceSdkClient {
    public BaseResponse<DBServiceResponse.QueryResult> selectSQL(String query);
    public void executeSQL(String query);
}
