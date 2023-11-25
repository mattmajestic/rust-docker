# Use an official Rust runtime as a parent image
FROM rust:1.54 as builder

# Set the working directory in the container to /usr/src/app
WORKDIR /usr/src/app

# Copy over your source code
COPY . .

# Build the application
RUN cargo build --release

# Start a new stage
FROM debian:buster-slim

# Set the working directory
WORKDIR /usr/src/app

# Copy the binary from the builder stage
COPY --from=builder /usr/src/app/target/release/my_rust_app .

# Expose port 8000
EXPOSE 8000

# Run the binary
CMD ["./intro_app"]