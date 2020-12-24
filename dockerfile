FROM node:12 as node-builder

WORKDIR /app
COPY ./ngx-admin /app

RUN npm install
RUN npm run build

FROM nginx
COPY --from=node-builder /app/dist /usr/share/nginx/html
