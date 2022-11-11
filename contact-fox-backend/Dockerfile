FROM node:latest   
WORKDIR /contact-fox-backend
COPY . .
COPY package.json ./
RUN npm install
EXPOSE 5000
CMD ["npm","run","start"]