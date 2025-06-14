#FROM arm64v8/eclipse-temurin:21-jdk-jammy #For jdk21
FROM arm64v8/openjdk:17-ea-16-jdk
# Set Java options
#ENV JAVA_TOOL_OPTIONS="-XX:UseSVE=0" #For jdk21
WORKDIR /app
COPY target/springboot-docker-demo-17.jar app.jar
EXPOSE 8080
# Keep the entrypoint clean
ENTRYPOINT ["java", "-jar", "app.jar"]