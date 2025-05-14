FROM alpine:3.20

RUN apk add --no-cache go
WORKDIR /src
RUN adduser -D hos && chown -R 1000:1000 /src
USER hos

CMD [ "sh" ]
