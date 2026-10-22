# Используем официальный образ Java 21 как базу
FROM eclipse-temurin:21-jre-alpine

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем собранный jar-файл из папки target в контейнер
# (ВАЖНО: имя файла должно совпадать с тем, что генерирует Maven)
COPY target/eureka-server-0.0.1-SNAPSHOT.jar app.jar

# Открываем порт 8761 (порт Eureka)
EXPOSE 8761

# Команда для запуска приложения
ENTRYPOINT ["java", "-jar", "app.jar"]