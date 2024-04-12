#!/usr/bin/env bash
# --Dockerfile
echo "# Stage 1: Build the application
FROM node:14 as builder
WORKDIR /app
COPY package.json .
COPY . .
RUN npm run build

# Stage 2: Create the final image
FROM nginx:1.21
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80
CMD [\"nginx\", \"-g\", \"daemon off;\"]" > Dockerfile

# build image
docker build -t my-app .
