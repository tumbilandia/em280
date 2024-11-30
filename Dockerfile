FROM nginx:1.27.3-alpine-slim

# Create necessary cache directories for Nginx and set permissions
RUN mkdir -p /var/cache/nginx/{proxy_temp,client_temp,fastcgi_temp} && \
    chown -R nginx:nginx /var/cache/nginx

# Copy your custom index.html into the nginx web directory
COPY index.html /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
