FROM python:3
ENV PYTHONUNBUFFERED 1
RUN apt-get update
RUN apt-get -y install ruby-sass default-jre-headless
RUN mkdir -p /local/heltour/
WORKDIR /local/heltour/
COPY ./heltour/requirements.txt /local/heltour/
RUN pip install -r requirements.txt
