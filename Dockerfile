FROM rust:latest

WORKDIR /usr/src/myapp

COPY . .

RUN cargo build --release

RUN cargo install --path .

ENV ROCKET_PORT=8080
ENV ROCKET_ADDRESS=0.0.0.0

CMD ["/usr/local/cargo/bin/myapp"]