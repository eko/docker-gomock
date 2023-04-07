FROM golang:1.20-alpine3.17 as builder

RUN apk add --no-cache git
RUN go install github.com/golang/mock/mockgen@v1.7.0-rc.1

FROM golang:1.20-alpine3.17
WORKDIR /bin
COPY --from=builder /go/bin/mockgen mockgen
