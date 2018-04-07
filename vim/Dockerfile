FROM alpine:latest
MAINTAINER Abhishek Mishra <abhishekmishra3@gmail.com>

RUN apk add --no-cache vim
RUN apk add --no-cache git
RUN apk add --no-cache curl

WORKDIR /root/
COPY .vimrc .
RUN vim +PlugInstall +qall
CMD ["vim"]
