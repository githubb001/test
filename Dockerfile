from	ubuntu:14.04

run apt-get update\
  && apt-get -y install vim dnsutils curl sudo\
  && curl -sSL https://get.docker.com/ | sh\
  && mkdir -p ~/netflix-proxy\
  && cd ~/netflix-proxy\
  && curl -L https://github.com/ab77/netflix-proxy/archive/latest.tar.gz\
  | tar xz --strip-components=1\
  && ./build.sh
