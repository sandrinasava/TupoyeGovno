FROM golang:1.23.3 

WORKDIR /usr/src/app 

COPY go.mod go.sum ./

RUN go mod tidy

RUN go mod download 

COPY . .
