#FROM nginx:1.21-alpine
FROM registry.access.redhat.com/ubi9/nginx-124
COPY index.html /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
