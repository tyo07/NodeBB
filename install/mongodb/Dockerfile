FROM mongo:latest

COPY ./docker-entrypoint-initdb.d/* /docker-entrypoint-initdb.d/

ENV MONGO_INITDB_ROOT_USERNAME=node
ENV MONGO_INITDB_ROOT_PASSWORD=node
ENV MONGO_INITDB_DATABASE=nodebb

EXPOSE 27017
CMD ["mongod", "--bind_ip_all"]
