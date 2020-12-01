FROM nimlang/nim:1.2.6-ubuntu

RUN apt-get update -yqq \
    && apt-get clean

WORKDIR /app
COPY . /app

RUN nimble install -Y