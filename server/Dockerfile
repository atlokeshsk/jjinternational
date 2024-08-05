# Use the official Golang image to create a build artifact
FROM golang:1.20-alpine AS builder

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the Go module files
COPY go.mod go.sum ./

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download

# Copy the source code into the container
COPY . .

# Build the Go app
RUN go build -o server .

# Use a minimal base image for the final image
FROM alpine:latest

# Set the Current Working Directory inside the container
WORKDIR /root/

# Copy the pre-built binary file from the builder stage
COPY --from=builder /app/server .

# Copy the Flutter web build files from the parent directory
COPY ../build/web ./web

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./server"]