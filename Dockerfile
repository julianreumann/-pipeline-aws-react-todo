FROM node:16

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm install -g serve

RUN npm ci

COPY . .
ENTRYPOINT [ "serve","-s", "build" ]
