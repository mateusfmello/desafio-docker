FROM alpine:3.12.0 as builder

RUN apk add --no-cache --virtual gcc musl-dev openssl go

RUN mkdir -p /home/go/src/hello /home/go/bin /home/go/pkg 

WORKDIR /home/go/src/hello

COPY ./script.go .

RUN go build

RUN ./hello


###############################################################


FROM alpine:3.12.0

COPY --from=builder /home/go/src/hello/hello .

ENTRYPOINT ["./hello"]