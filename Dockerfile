FROM golang as builder

WORKDIR /go-challange
COPY . .
RUN go build main.go

FROM scratch
WORKDIR /go-challange
COPY --from=builder /go-challange/main .
CMD ["./main"]