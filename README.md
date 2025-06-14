
# Spring Boot Docker Demo

This project demonstrates how to build and run a simple Java Spring Boot application inside a Docker container.

## Prerequisites

- Java 17+
- Maven
- Docker

## Build the Application

First, build the Spring Boot application JAR using Maven:

```sh
mvn clean package
```

This will generate the JAR file at `target/springboot-docker-demo-17.jar`.

## Build the Docker Image

Build the Docker image using the provided `Dockerfile`:

```sh
docker build -t springboot-docker-demo .
```

## Run the Application in Docker

Run the Docker container, mapping port 8080:

```sh
docker run -p 8080:8080 springboot-docker-demo
```

The application will be accessible at [http://localhost:8080](http://localhost:8080).

## Notes

- The Dockerfile uses an ARM64 OpenJDK 17 base image. Adjust the `FROM` line if you need a different architecture or JDK version.
- You can modify the application code and repeat the steps above to rebuild and redeploy.

## License

This project is for demonstration purposes.
