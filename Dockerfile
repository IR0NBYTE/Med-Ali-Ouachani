# Build stage
FROM node:14-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install

# Production stage
FROM nginx:stable-alpine as production-stage
EXPOSE 80