FROM openjdk:17
VOLUME /tmp
ADD ./target/api-gateway-0.0.1-SNAPSHOT.jar api-gateway.jar
ENTRYPOINT ["java","-jar","api-gateway.jar", "--eureka.client.service-url.defaultZone=http://eureka-server:8761/eureka"]