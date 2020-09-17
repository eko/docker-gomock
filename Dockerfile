FROM golang:1.15-alpine as builder
RUN apk add --no-cache git
RUN go get github.com/golang/mock/mockgen

FROM golang:1.15-alpine
WORKDIR /bin
COPY --from=builder /go/bin/mockgen mockgen
