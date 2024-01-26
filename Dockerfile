# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

ENV APP_NAME Scanner 

WORKDIR /Scanner

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "--timeout", "600", "wsgi:app"]