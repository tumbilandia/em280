FROM nginx:1.27.3-alpine-slim
#FROM docker.io/library/nginx:1.27.3-alpine-slim

# Copy your custom index.html into the nginx web directory
COPY index.html /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
