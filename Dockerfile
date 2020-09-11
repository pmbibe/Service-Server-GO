FROM amd64/golang:1.14.9-alpine3.12
WORKDIR /app/go-sample-app
COPY go.mod .
COPY go.sum .
RUN go mod download
COPY . .
RUN go build -o ./out/go-sample-app .
EXPOSE 4040
CMD ["./out/go-sample-app"]
