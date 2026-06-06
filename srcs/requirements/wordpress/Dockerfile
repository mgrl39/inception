#https://docs.docker.com/get-started/docker-concepts/building-images/writing-a-dockerfile/
FROM debian:latest
WORKDIR /app
COPY . .
RUN chmod 500 tools/download-wordpress.sh
RUN tools/download-wordpress.sh
CMD ["wc"]
