#stage 1
FROM maven:3.8.3-openjdk-17 AS builder

WORKDIR /app

COPY . /app

#EXPOSE 8080

RUN mvn clean install -DskipTests=True

#stage 2

FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]


