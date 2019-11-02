FROM node:10

RUN mkdir -p /usr/src/node_app

WORKDIR /usr/src/node_app

COPY package*.json ./

RUN npm install 

COPY . .

EXPOSE 8080

CMD ["node", "bin/www"]
