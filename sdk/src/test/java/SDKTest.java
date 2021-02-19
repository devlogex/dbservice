import com.google.gson.Gson;
import com.tnd.common.api.common.base.BaseResponse;
import com.tnd.dbservice.common.representation.DBServiceResponse;
import com.tnd.dbservice.sdk.api.DBServiceSdkClient;
import com.tnd.dbservice.sdk.api.impl.DBServiceSdkClientImpl;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@RunWith(JUnit4.class)
public class SDKTest {
    private static Logger LOGGER = LoggerFactory.getLogger(SDKTest.class);
    private Gson gson = new Gson();
    private DBServiceSdkClient client;

    // @Before
    // public void init() {
    //     client = new DBServiceSdkClientImpl("localhost", 9000,1);
    // }

    // @Test
    // public void select() {
    //     String querySelect = "Select * from test";
    //     BaseResponse<DBServiceResponse.QueryResult> response = client.selectSQL(querySelect);
    //     LOGGER.info("response: {}", gson.toJson(response));
    // }

    // @Test
    // public void execute() {
    //     int id = 1;
    //     String name = "hixhix";
    //     String queryExecute = String.format("insert into test values(%d,'%s')",id, name);
    //     client.executeSQL(queryExecute);
    //     String querySelect = String.format("Select * from test where id = %d",id);
    //     BaseResponse<DBServiceResponse.QueryResult> response = client.selectSQL(querySelect);
    //     LOGGER.info("response: {}", gson.toJson(response));
    // }
}
