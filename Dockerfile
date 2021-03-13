FROM python:3.9.2-slim-buster


RUN mkdir /app
RUN chmod 777 /app
WORKDIR /app

RUN apt -qq update
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata
RUN apt -qq install -y git wget curl pv jq wget python3-dev ffmpeg
COPY sh.py .
COPY . .
CMD ["python","sh.py"]
