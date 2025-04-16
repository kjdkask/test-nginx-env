FROM nginx:stable-alpine

COPY nginx.conf.template /etc/nginx/templates/


COPY nginx.conf.template /etc/nginx/templates/default.conf.template


ENV LISTEN_PORT=80 \
    DESTINATION_HOST="default.local" \
    DESTINATION_PORT=80

EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]
