FROM golang:1.19.4-alpine as builder

RUN apk add --no-cache git
RUN go install github.com/golang/mock/mockgen@v1.6.0

FROM golang:1.19.4-alpine
WORKDIR /bin
COPY --from=builder /go/bin/mockgen mockgen
