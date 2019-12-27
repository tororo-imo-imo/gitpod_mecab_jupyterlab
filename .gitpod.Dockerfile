FROM python:3.7

USER root

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
      git \
      mecab \
      libmecab-dev \
      mecab-ipadic-utf8 

RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git \
    && cd mecab-ipadic-neologd \
    && bin/install-mecab-ipadic-neologd -n -y
    
RUN pip install pipenv
