FROM openjdk:21-jdk-slim
WORKDIR /app
COPY c7run /app/c7run
WORKDIR /app/c7run
EXPOSE 8080
CMD ["./start"]