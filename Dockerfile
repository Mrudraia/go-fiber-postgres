# Build stage
FROM golang:alpine AS builder

RUN apk update && apk add --no-cache git && apk add --no-cach bash && apk add build-base
WORKDIR /app
COPY go.mod go.sum ./

RUN go get -d -v ./...

RUN go install -v ./...
COPY . .
RUN go build -o main .

# Run stage
FROM alpine
WORKDIR /app
COPY --from=builder /app .
EXPOSE 8080
ENTRYPOINT  ["/app/main"]