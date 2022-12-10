FROM node:latest

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app/

RUN npm install

COPY . /usr/src/app/

RUN rm -rf /usr/src/app/terraform

EXPOSE 80

CMD ["npm", "start"]