# Используем официальный образ с Python
FROM python:3.12-slim

# Обновляем pip и ставим зависимости
RUN pip install --upgrade pip
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

# Создаём рабочую директорию
WORKDIR /home/jovyan/work

# Копировать проект не будем — будем монтировать volume

# Открываем порт Jupyter
EXPOSE 8888

# Запуск Jupyter
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]
