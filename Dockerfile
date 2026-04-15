FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY logos/ /usr/share/nginx/html/logos/
