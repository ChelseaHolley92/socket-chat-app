FROM node:19-alpine
WORKDIR /app
COPY package.json .
RUN npm install && npm install -g nodemon
COPY . .
EXPOSE 3000
CMD [ "nodemon", "index.js"]
