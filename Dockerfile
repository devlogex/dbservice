FROM pw_env
WORKDIR /data/dbservice
COPY . .
RUN mvn -B -f /data/dbservice/pom.xml -s /usr/share/maven/ref/settings.xml clean package
CMD ["java", "-jar", "runner/target/dbservice-runner-jar-with-dependencies.jar"]