FROM node:16.14.0-alpine

RUN apk add --no-cache aws-cli

WORKDIR /app

COPY package*.json ./

RUN npm install --legacy-peer-deps

COPY . .

RUN npm run build

EXPOSE 3000

ENTRYPOINT ["sh", "startup.sh"]