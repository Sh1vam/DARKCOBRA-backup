FROM kalilinux/kali-rolling
RUN mkdir /app
RUN chmod 777 /app
WORKDIR /app
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt upgrade -y && apt-get install sudo -y && apt-get install apt-utils -y
RUN touch ~/.hushlogin
RUN apt-get install -y\
    bash \
    figlet \
    git \
    neofetch \
    postgresql \
    postgresql-client \
    postgresql-server-dev-all \
    wget \
    python3 \
    python3-dev \
    python3-pip \
    sqlite3 \
    ffmpeg \
    zip \
    axel \


COPY . .
CMD ["python3","sh.py"]
