FROM node:21-alpine
WORKDIR /app

COPY server.js .
COPY index.html .
COPY images ./images
COPY package.json .

RUN npm install
RUN yum -y install nginx:1.19.0;yum clean all; systemctl enable nginx


EXPOSE 3000

CMD ["node", "server.js"]
