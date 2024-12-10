FROM openjdk:17-oracle

# Копирование JAR-файла в контейнер
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# Метаданные
LABEL authors="ALEXEY"

# Команда для запуска приложения
ENTRYPOINT ["java", "-jar", "/app.jar"]
