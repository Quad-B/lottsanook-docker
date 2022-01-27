#Use and existing docker image as a base
FROM node:16-alpine
WORKDIR '/app'
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm","run","dev"]
