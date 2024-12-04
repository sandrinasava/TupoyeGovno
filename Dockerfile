FROM golang:1.23.3 

WORKDIR /usr/src/app 

COPY . .

RUN go mod tidy

RUN go mod download 
