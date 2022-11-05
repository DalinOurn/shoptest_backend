# stage1 as builder
FROM node:14-alpine as builder

WORKDIR /backend

# Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the files
COPY . .

EXPOSE 3001
ENTRYPOINT ["", "index.js"]