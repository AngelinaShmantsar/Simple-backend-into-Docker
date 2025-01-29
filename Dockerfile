FROM ubuntu:20.04 AS base
RUN apt update -y && apt install nodejs -y && apt install npm -y
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
CMD ["node", "index.js"]
EXPOSE 8000
