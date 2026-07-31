FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY target/*.jar app.jar

# Create non-root user
RUN addgroup --system appgroup && \
    adduser --system appuser --ingroup appgroup

# Change ownership
RUN chown -R appuser:appgroup /app

# Switch to non-root user
USER appuser

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]
