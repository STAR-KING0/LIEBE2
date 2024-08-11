FROM node:18.16.0-bullseye-slim

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp \
  git && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/STAR-KING0/Queen_Alya /Queen_Alya
WORKDIR /Queen_Alya
RUN npm install
CMD ["node", "index.js"]
