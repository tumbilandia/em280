FROM nginx:1.27.3-alpine-slim

# Set up the necessary directories with appropriate permissions
USER root
RUN mkdir -p /var/cache/nginx/client_temp && \
    chmod -R 777 /var/cache/nginx

# Copy your custom index.html
COPY index.html /usr/share/nginx/html

# Expose the necessary port
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

# Revert to a non-root user if required by nginx
USER nginx
