FROM alpine:3.3
RUN apk add  --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.7/main/ nodejs=8.9.3-r1
RUN mkdir /app
WORKDIR /app


# Adding AquaSec microscanner
# ADD https://get.aquasec.com/microscanner /
# RUN chmod +x /microscanner
# RUN /microscanner MGIxMGM1NDAzMmVh --html


COPY ./alpine3-3/. .
EXPOSE 8083
CMD node index.js