FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && 
    apt-get install -y nodejs && 
    npm i -g npm
COPY requirements.txt /requirements.txt
RUN pip3 install -U -r requirements.txt
RUN mkdir /Shiina-Mahiru
WORKDIR /Shiina-Mahiru
COPY start.sh /Shiina-Mahiru/start.sh
COPY bot.py /Shiina-Mahiru/bot.py
CMD ["/bin/bash", "/Shiina-Mahiru/start.sh"]
