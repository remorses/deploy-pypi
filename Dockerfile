FROM python:3.7-alpine

RUN pip install -U --user --no-cache-dir setuptools wheel twine

COPY ./deploy /deploy

RUN chmod +x /deploy
