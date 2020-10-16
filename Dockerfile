FROM node:12.16.1-alpine

WORKDIR /app

ENV NO_BRO_SERVER_PORT;
ENV NO_BRO_WORKERS_COUNT;
ENV NO_BRO_STORE_RESPONSE_MS;
ENV NO_BRO_DATA_VOLUME;
ENV NO_BRO_SECRET_KEY;

COPY package.json ./package.json
COPY index.js ./index.js

RUN npm install

CMD [ "node", "index.js" ]
