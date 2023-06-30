FROM nginx:alpine
COPY . /usr/share/nginx/html
#COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080