FROM node:latest AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install --force
COPY . .
RUN npm run build --prod
FROM nginx:alpine
COPY --from=builder /app/dist/angular /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx","-g","daemon off;" ]