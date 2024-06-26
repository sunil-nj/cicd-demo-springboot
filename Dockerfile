# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM adoptopenjdk/openjdk17:alpine-jre

# Simply the artifact path
#ARG artifact=target/spring-boot-web.jar

#WORKDIR /opt/app

#COPY ${artifact} app.jar

EXPOSE 8080
ADD target/devoops-springboot-integration.jar devoops-springboot-integration.jar

# This should not be changed
ENTRYPOINT ["java","-jar","/devoops-springboot-integration.jar"]
