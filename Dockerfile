# Use the official Nginx image from the Alpine-based version
FROM nginx:1.27.3-alpine-slim

# Create necessary directories and set permissions for Nginx cache
RUN mkdir -p /var/cache/nginx && \
    chown -R nginx:nginx /var/cache/nginx

# Copy your custom HTML file to the nginx server's root
COPY index.html /usr/share/nginx/html

# Copy the custom nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 8080 instead of the default 80 to avoid permission issues
EXPOSE 8080

# Set the Nginx command to start it without daemonizing
CMD ["nginx", "-g", "daemon off;"]
