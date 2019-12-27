FROM python:3.7

USER root

RUN apt-get update && apt-get install -y \
      git \
      mecab \
      libmecab-dev \
      mecab-ipadic-utf8 
     
RUN pip install pipenv
