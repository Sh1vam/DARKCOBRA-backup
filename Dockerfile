FROM python:3.9.2-slim-buster


RUN mkdir /app
RUN chmod 777 /app
WORKDIR /app

RUN apt -qq update
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata
RUN apt update && apt upgrade -y && apt install --no-install-recommends -y \
        debian-keyring \
        debian-archive-keyring \
        bash \
        curl \
        git \
       util-linux \
       libffi-dev \
       libjpeg-dev \
       libjpeg62-turbo-dev \
       libwebp-dev \
       linux-headers-amd64 \
       musl-dev \
       musl \
       neofetch \
       python3-lxml \
       postgresql \
       postgresql-client \
       libpq-dev \
       libcurl4-openssl-dev \
       libxml2-dev \
       libxslt1-dev \
       openssl \
       pv \
       jq \
       wget \
       python3-dev \
       libreadline-dev \
       libyaml-dev \
       zlib1g \
       ffmpeg \
       libssl-dev \
       libgconf-2-4 \
       libxi6 \
       zlib1g-dev \
       xvfb \
       unzip \
       make \
       libopus0 \
       libopus-dev \
       gcc

COPY sh.py .
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python","sh.py"]
