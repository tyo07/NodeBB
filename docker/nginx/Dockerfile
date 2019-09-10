FROM nginx:latest
COPY default.conf /etc/nginx/conf.d/default.conf

COPY nginx-selfsigned.crt /etc/ssl/certs/trumpetboards.crt
COPY nginx-selfsigned.key /etc/ssl/private/trumpetboards.key
