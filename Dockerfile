FROM alpine:latest
LABEL authors="polina"

RUN apk update && apk add nginx && apk add curl && rm -rf /var/cache/apk/*

RUN mkdir -p /www

COPY index.html /www/index.html

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]