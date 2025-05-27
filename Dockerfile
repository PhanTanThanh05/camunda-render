# Sử dụng image Java 11 nhẹ để chạy Camunda
FROM openjdk:11-jdk-slim

# Đặt thư mục làm việc là /app
WORKDIR /app

# Sao chép thư mục Camunda đã giải nén vào container
COPY c7run /app/c7run

# Chuyển thư mục làm việc vào thư mục Camunda
WORKDIR /app/c7run

# Mở port 8080 cho Camunda
EXPOSE 8080

# Chạy Camunda khi container khởi động
CMD ["./start"]