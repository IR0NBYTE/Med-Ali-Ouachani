FROM node:latest

COPY . .

RUN npm ci

RUN npm run build

FROM nginx:latest

COPY ./public /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]