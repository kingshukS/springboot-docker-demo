#FROM arm64v8/eclipse-temurin:21-jdk-jammy #For jdk21
FROM arm64v8/openjdk:17-ea-16-jdk
# Set Java options
#ENV JAVA_TOOL_OPTIONS="-XX:UseSVE=0" #For jdk21
WORKDIR /app
COPY target/springboot-docker-demo-17.jar app.jar
# ENV SERVER_PORT=8080
# EXPOSE is only documentation and for some Docker tooling.
# It does not actually publish the port.
# Port publishing (-p or --publish) and environment variable overrides work independently of EXPOSE.
# EXPOSE ${SERVER_PORT}
ENTRYPOINT ["java", "-jar", "app.jar"]
# Using spring variable for port:
#    docker run -e SERVER_PORT=8081 -p 8081:8081 <image:tag>
# Passing cmd for port during run:
#    docker run -p 8081:8081 <image:tag> --server.port=8081 
# Passing custom environment variable for port and setting it through application.properties:
#    docker run -e PORT=8081 <image:tag> and in application.properties: server.port=${PORT:8080}
