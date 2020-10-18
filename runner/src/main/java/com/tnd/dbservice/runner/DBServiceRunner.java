package com.tnd.dbservice.runner;

import com.tnd.com.ioc.SpringApplicationContext;
import com.tnd.common.api.server.CommonServer;
import com.tnd.dbservice.runner.config.DBServiceConfig;
import com.tnd.dbservice.runner.handler.DBServiceHandler;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class DBServiceRunner {
    public static void main(String args[]) throws Exception {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
        context.register(DBServiceConfig.class);
        context.refresh();
        SpringApplicationContext.setShareApplicationContext(context);

        CommonServer commonServer = new CommonServer();
        commonServer.register(SpringApplicationContext.getBean(DBServiceHandler.class));

        commonServer.initGrpc(9000);
        commonServer.initServlet(8000);
        commonServer.startServer();
    }
}
