FROM alpine:3.8
LABEL maintainer="github.com/infomaniac/"
LABEL description="Docker image based on Alpine Linux running gotty (https://github.com/yudai/gotty/)."
RUN apk update && apk upgrade && apk add libc6-compat openssl
RUN openssl req -newkey rsa:4096 -nodes -keyout ~/.gotty.key -x509 -days 265 -out ~/.gotty.crt -subj '/CN=localhost'
ADD https://github.com/yudai/gotty/releases/download/v2.0.0-alpha.3/gotty_2.0.0-alpha.3_linux_amd64.tar.gz /tmp
RUN tar xvfzp /tmp/gotty_2.0.0-alpha.3_linux_amd64.tar.gz --directory /usr/local/bin/ && rm tmp/gotty_2.0.0-alpha.3_linux_amd64.tar.gz
WORKDIR /
EXPOSE 443
CMD ["gotty", "-w", "-t", "-p", "443", "/bin/sh"]