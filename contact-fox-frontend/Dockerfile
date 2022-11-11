FROM node:latest   
WORKDIR /contact-fox-frontend
COPY . .
COPY package.json ./
RUN npm install
EXPOSE 3000
CMD ["npm","run","start"]