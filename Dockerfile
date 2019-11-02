FROM node:10.0.0

RUN mkdir -p /usr/src/node_app
COPY ./node_app/* /usr/src/node_app/
WORKDIR /usr/src/node_app

RUN npm install 

CMD node /usr/src/node_app/bin/www
