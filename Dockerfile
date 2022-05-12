FROM alpine:latest

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

ADD idle.sh /idle.sh

# Install.
RUN \
  apk add  --no-cache bash busybox-extras openssh-client

RUN adduser -D cisco
RUN echo 'cisco:cisco' | chpasswd

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash", "/idle.sh"]
