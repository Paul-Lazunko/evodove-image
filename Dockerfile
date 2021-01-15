FROM node:12.16.1-alpine

WORKDIR /app

ENV EVODOVE_SERVER_PORT ;
ENV EVODOVE_WORKERS_COUNT ;
ENV EVODOVE_STORE_RESPONSE_MS ;
ENV EVODOVE_DATA_VOLUME ;
ENV EVODOVE_SECURE_KEY ;

COPY package.json ./package.json
COPY index.js ./index.js

RUN npm install

CMD [ "node", "index.js" ]
