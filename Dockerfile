FROM python:3.8-alpine
ENV PYTHONUNBUFFERED 1
RUN pip install pipenv
RUN pipenv install