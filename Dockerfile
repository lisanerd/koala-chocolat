FROM node:latest as build-stage
WORKDIR /app
COPY package*.json ./
RUN yarn install
COPY . .
RUN yarn run build

FROM nginx as production-stage
# COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/conf.d/configfile.template

RUN mkdir /app
COPY --from=build-stage /app/dist /app
# COPY --from=build-stage /app/dist /usr/share/nginx/html

ENV PORT 8080
ENV HOST 0.0.0.0
EXPOSE 8080
CMD sh -c "envsubst '\$PORT' < /etc/nginx/conf.d/configfile.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
