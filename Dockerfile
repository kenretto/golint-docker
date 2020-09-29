FROM golang:1.15
LABEL stage=builder
WORKDIR /golint
RUN git clone https://github.com/golang/lint.git .
RUN cd golint/ && GOPROXY=https://goproxy.io go build -o lint

FROM alpine:latest
COPY --from=0 /golint/golint/lint /usr/bin/golint
CMD ["golint", "./..."]
