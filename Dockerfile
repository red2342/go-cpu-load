FROM golang

WORKDIR /usr/src/go-cpu-load

COPY go.mod go.sum ./
RUN go mod download && go mod verify
COPY . .
RUN go build -v -o /usr/local/bin/go-cpu-load .

ENTRYPOINT ["go-cpu-load"]

