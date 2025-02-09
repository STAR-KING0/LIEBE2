FROM node:18.16.0-bullseye-slim

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp \
  git && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/STAR-KING0/LIEBE /LIEBE
WORKDIR /LIEBE
RUN npm install
CMD ["node", "index.js"]
