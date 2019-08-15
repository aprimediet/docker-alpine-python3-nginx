FROM aprimediet/alpine-python:latest
LABEL maintainer="<Muhamad Aditya Prima> aditya.prima@qti.co.id"

# INSTALL NGINX
RUN apk update && apk upgrade && \
    apk add --update --no-cache \
    nginx

# COPY CONFIGURATIONS
ADD etc . /
ADD usr . /

EXPOSE 80 443
