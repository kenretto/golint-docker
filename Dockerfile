FROM golang:1.15
LABEL stage=builder
WORKDIR /golint
RUN git clone https://github.com/golang/lint.git .
RUN GOPROXY=https://goproxy.io go build -o golint -ldflags "-s -w -linkmode external -extldflags -static" golint/golint.go

FROM alpine:latest
COPY --from=0 /golint/golint /usr/bin/golint
