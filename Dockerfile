# stage1 as builder
FROM node:14-alpine as builder

WORKDIR /backend

# Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the files
COPY . .

FROM keymetrics/pm2:latest-alpine
# RUN pm2 start

EXPOSE 3001
ENTRYPOINT ["pm2-runtime", "index.js"]