FROM ubuntu

RUN apt-get update; \
    apt-get install -y --no-install-recommends ca-certificates curl; \
    echo "deb http://nginx.org/packages/mainline/ubuntu/ xenial nginx" >> /etc/apt/sources.list; \
    echo "deb-src http://nginx.org/packages/mainline/ubuntu/ xenial nginx " >> /etc/apt/sources.list; \
    curl http://nginx.org/keys/nginx_signing.key | apt-key add -; \
    apt-get update && apt-get install -y unit python python3

CMD ["unitd", "--no-daemon", "--control", "*:8443"]
