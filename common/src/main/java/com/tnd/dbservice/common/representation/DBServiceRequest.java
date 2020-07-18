package com.tnd.dbservice.common.representation;

import com.tnd.common.api.common.base.BaseRequest;

import java.io.Serializable;

public class DBServiceRequest extends BaseRequest {
    private static final long serialVersionUID = 1L;

    private String query;

    public DBServiceRequest() {
    }

    public DBServiceRequest(String query) {
        this.query = query;
    }

    public String getQuery() {
        return query;
    }

    public void setQuery(String query) {
        this.query = query;
    }
}
