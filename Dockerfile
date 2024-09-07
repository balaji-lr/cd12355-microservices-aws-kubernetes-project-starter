FROM python:3.10-slim-buster
ENV DB_USERNAME=admin
ENV DB_PASSWORD=admin
WORKDIR /src
COPY ./analytics//requirements.txt requirements.txt
RUN apt update -y
RUN pip install -r requirements.txt
COPY ./analytics/ .
CMD python app.py
