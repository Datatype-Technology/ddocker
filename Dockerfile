FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN pip install pipenv
RUN pipenv install
RUN pipenv shell