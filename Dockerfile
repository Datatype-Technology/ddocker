FROM python:3.8-slim
ENV PYTHONUNBUFFERED 1
WORKDIR /app
RUN apt-get update && \
    apt-get install -y python-pip python-dev build-essential \
                       libmysqlclient-dev \
                       gunicorn \
                       libcairo2-dev \
                       libjpeg62-turbo-dev \
                       libpango1.0-dev \
                       libgif-dev \
                       build-essential \
                       g++ \
                       python-imaging
RUN pip install pipenv
COPY ./Pipfile* /app/
RUN pipenv install