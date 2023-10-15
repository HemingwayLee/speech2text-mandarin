FROM python:3.8

RUN apt-get update && apt-get install -y build-essential ffmpeg
RUN apt-get install -y swig libpulse-dev libasound2-dev 

RUN mkdir -p /app/code
WORKDIR /app/code
COPY . .

RUN pip3 install -r requirements.txt

