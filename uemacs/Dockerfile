FROM alpine:latest as builder
RUN apk add --no-cache gcc
RUN apk add --no-cache make
RUN apk add --no-cache git
RUN apk add --no-cache musl-dev
RUN apk add --no-cache ncurses-libs
RUN apk add --no-cache ncurses-dev
WORKDIR /root/
RUN git clone https://github.com/torvalds/uemacs.git
WORKDIR /root/uemacs
RUN make

FROM alpine:latest
RUN apk add --no-cache ncurses-libs
RUN apk add --no-cache ncurses-dev
WORKDIR /root/
COPY --from=builder /root/uemacs .
RUN ./em --version
CMD ["./em"]
