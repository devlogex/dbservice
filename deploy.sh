#!/bin/bash

mvn clean package -DskipTests
scp -i ~/Public/KeyAWS/Key201020.pem runner/target/dbservice-runner-jar-with-dependencies.jar  ubuntu@54.179.107.21:/home/ubuntu/workspace
