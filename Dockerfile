FROM alpine:latest

RUN apk add --no-cache ca-certificates

COPY pocketbase /app/pocketbase
COPY pb_data /app/pb_data

WORKDIR /app
RUN chmod +x pocketbase

EXPOSE 8090
CMD ["./pocketbase", "serve", "--dir", "pb_data"]
