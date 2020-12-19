FROM nimlang/nim:1.4.0

RUN apt-get update -yqq \
    && apt-get clean

WORKDIR /app
COPY . /app