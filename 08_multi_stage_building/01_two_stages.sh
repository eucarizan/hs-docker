#!/usr/bin/env bash

# --Dockerfile
echo "#Stage 1: Building the application
FROM node:14 as builder
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

#Stage 2: Creating the final image
FROM nginx:1.21
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80
CMD [\"nginx\", \"-g\", \"daemon off;\"]" > Dockerfile

