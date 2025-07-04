FROM nginx:alpine
COPY . /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf.template

# When the container starts, substitute the environment variables
# and start Nginx
CMD ["/bin/sh", "-c", "envsubst < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"]