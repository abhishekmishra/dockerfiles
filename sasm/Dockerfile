FROM debian:latest
LABEL maintainer="Abhishek Mishra <abhishekmishra3@gmail.com>"

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y gcc gcc-multilib g++ gdb make nasm qt4-qmake libqt4-dev libxcb1 libxcb-render0 libxcb-icccm4

RUN apt-get install -y wget

WORKDIR /root/sasm-build
RUN wget https://github.com/Dman95/SASM/tarball/master -O sasm.tar.gz
RUN tar --strip=1 -xzvf sasm.tar.gz
RUN qmake
RUN make
RUN make install

CMD ["sasm"]
