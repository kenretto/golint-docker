FROM golang:1.15
LABEL stage=builder
WORKDIR /swag
RUN git clone --branch v1.6.7 https://github.com/swaggo/swag.git .
RUN go build -o swag -ldflags "-s -w -linkmode external -extldflags -static" cmd/swag/main.go

FROM alpine:latest
COPY --from=0 /swag/swag /usr/bin/swag
