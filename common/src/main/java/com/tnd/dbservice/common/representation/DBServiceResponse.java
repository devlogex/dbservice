package com.tnd.dbservice.common.representation;

import com.tnd.common.api.common.base.BaseResponse;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;

public class DBServiceResponse implements Serializable {
    private static final long serialVersionUID = 1L;

    public static class ExecuteNonQueryResult implements Serializable {
        private static final long serialVersionUID = 1L;
        private Boolean success;

        public ExecuteNonQueryResult(){

        }

        public ExecuteNonQueryResult(Boolean success) {
            this.success = success;
        }

        public Boolean getSuccess() {
            return success;
        }

        public void setSuccess(Boolean success) {
            this.success = success;
        }
    }

    public static class QueryResult implements Serializable {
        private static final long serialVersionUID = 1L;
        private List<HashMap<String, String>> data;
        private Boolean success;

        public QueryResult(){}

        public QueryResult(List<HashMap<String, String>> data, Boolean success) {
            this.data = data;
            this.success = success;
        }

        public List<HashMap<String, String>> getData() {
            return data;
        }

        public void setData(List<HashMap<String, String>> data) {
            this.data = data;
        }

        public Boolean getSuccess() {
            return success;
        }

        public void setSuccess(Boolean success) {
            this.success = success;
        }
    }
}
