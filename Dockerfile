FROM node:21-alpine
FROM nginx:1.19.0
COPY ./nginx.conf /opt/homebrew/etc/nginx/nginx.conf

WORKDIR /app

COPY server.js .
COPY index.html .
COPY images ./images
COPY package.json .

RUN npm install



EXPOSE 3000

CMD ["node", "server.js"]




