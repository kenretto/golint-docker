FROM golang:1.15
LABEL stage=builder
RUN GOPROXY=https://goproxy.io go get -u github.com/swaggo/swag/cmd/swag

FROM alpine:latest
COPY --from=0 /go/bin/swag /usr/bin/swag
