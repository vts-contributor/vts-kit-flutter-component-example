FROM docker.io/library/nginx:1.20-alpine
WORKDIR /src
COPY nginx.conf /etc/nginx/nginx.conf
COPY build/web /usr/share/nginx/html/flutter_webapp/