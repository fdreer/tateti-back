FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
COPY .env ./
RUN npm run build
EXPOSE 433
CMD ["node","dist/main.js"]