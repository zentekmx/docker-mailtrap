FROM python:3.6-alpine
MAINTAINER marco.rojas@zentek.com.mx

ENV PYTHONUNBUFFERED 1
RUN set -ex && apk --no-cache --virtual .build-deps add build-base g++ bash curl gcc libgcc linux-headers

RUN pip install --upgrade pip
RUN pip install mailtrap==0.1.3

CMD ["mailtrap", "--smtp-ip", "0.0.0.0", "--http-ip", "0.0.0.0"]

EXPOSE 1080 1025
