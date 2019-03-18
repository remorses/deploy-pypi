FROM python:3.7-alpine

RUN pip install setuptools wheel twine

COPY ./deploy /deploy
