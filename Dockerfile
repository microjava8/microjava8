FROM registry.web.boeing.com/container/boeing-images/stack/rhel7atomic-jdk11:7.7-205-11.0.4-1

VOLUME /tmp
ARG JAR_FILE
COPY target/demo-0.0.1-SNAPSHOT.jar demo.jar
RUN chmod 755 demo.jar
ENTRYPOINT ["java","-jar","/demo.jar"]
