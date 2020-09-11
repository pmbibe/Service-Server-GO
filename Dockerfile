FROM golang:1.14.9-alpine3.12
WORKDIR /go/src/app
COPY go.mod .
COPY go.sum .
RUN go mod download
COPY . .
RUN go build -o /go/src/app .
EXPOSE 4040
CMD ["./server"]
