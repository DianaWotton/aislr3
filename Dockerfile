# Используйте официальный образ Python
FROM python:3.9-slim

# Устанавливаем зависимости
RUN pip install flask

# Копируем файлы в контейнер
COPY app.py /app/
COPY index.html /app/

# Устанавливаем рабочую директорию
WORKDIR /app/

# Определяем команду для запуска приложения
CMD ["python", "app.py"]