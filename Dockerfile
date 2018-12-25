FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD target/account-service-0.0.1-SNAPSHOT.jar account-service.jar
RUN sh -c 'touch /oms-customer-service.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/account-service.jar"]
EXPOSE 8083
