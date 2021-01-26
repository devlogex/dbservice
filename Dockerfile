FROM pw_env
WORKDIR /data/dbservice
COPY runner/target/dbservice-runner-jar-with-dependencies.jar .
# RUN mvn -B -f /data/dbservice/pom.xml -s /usr/share/maven/ref/settings.xml clean package
CMD ["java", "-jar", "dbservice-runner-jar-with-dependencies.jar"]