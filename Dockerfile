FROM openjdk:17
WORKDIR /app
COPY target/spotify-app-1.0.0.jar /app/spotify-app.jar
EXPOSE 5555
ENTRYPOINT ["java", "-jar", "spotify-app.jar"]
