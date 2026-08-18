FROM debian:latest
WORKDIR /app
COPY . .
RUN chmod 500 tools/download-nginx.sh
RUN ls tools/
RUN tools/download-nginx.sh
CMD ["wc"]
