FROM python:3.6.1
ADD . /app
WORKDIR /app
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 50051
CMD ["python", "app.py"]
