package com.tnd.dbservice.sdk.api;

import com.tnd.common.api.common.base.BaseResponse;
import com.tnd.dbservice.common.representation.DBServiceResponse;

import java.io.Serializable;

public interface DBServiceSdkClient {
    BaseResponse<DBServiceResponse.QueryResult> selectSQL(String query);
    BaseResponse<Boolean> executeSQL(String query);
}
