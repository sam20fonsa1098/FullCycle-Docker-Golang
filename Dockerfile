FROM golang:1.17 as builder

WORKDIR /usr/src/app

COPY . .

RUN go build main.go

FROM scratch

WORKDIR /urs/src/app

COPY --from=builder /usr/src/app/main /urs/src/app

CMD ["./main"]




