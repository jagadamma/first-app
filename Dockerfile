FROM brentley/ecsdemo-nodejs
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
COPY . .
RUN npm install
RUN npm start
RUN npm run biuld --prod
EXPOSE 80

FROM nginx:latest
COPY  /dist/first-app  /usr/share/nginx/html