FROM node:gallium-slim

WORKDIR /app

COPY package*.json /app

RUN npm install

COPY . /app

ENV PORT=3000

EXPOSE ${PORT}

CMD [ "npm","start" ]


# docker run -it  -p 3000:3000  --name front a9c226af764d