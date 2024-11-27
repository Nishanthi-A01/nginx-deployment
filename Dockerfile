FROM node:21-alpine
WORKDIR /app
RUN brew install nginx:1.19.0

COPY server.js .
COPY index.html .
COPY images ./images
COPY package.json .

RUN npm install 


EXPOSE 3000

CMD ["node", "server.js"]
