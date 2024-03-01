FROM rust:latest

WORKDIR /usr/src/myapp

COPY . .

RUN cargo build --release

RUN cargo install --path .

ENV ROCKET_PORT=8080

CMD ["/usr/local/cargo/bin/myapp"]