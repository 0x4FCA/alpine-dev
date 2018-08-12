FROM alpine:3.8
LABEL maintainer "0x4FCA"

ARG HTTP_PROXY
ARG HTTPS_PROXY

RUN export http_proxy=$HTTP_PROXY \
 && export https_proxy=$HTTPS_PROXY \
 && echo http://dl-cdn.alpinelinux.org/alpine/edge/testing/ >> /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add llvm5=5.0.1-r4 \
 && apk add lldb=5.0.1-r0 \
 && apk add clang=5.0.1-r1 \
 && apk add cmake=3.11.1-r2 cmake-bash-completion=3.11.1-r2 \
 && apk add boost=1.66.0-r0 \
 && apk add python2=2.7.15-r0 py2-pip=10.0.1-r0 python3=3.6.4-r1 \
 && apk add nodejs=8.11.3-r1 npm=8.11.3-r1 \
 && apk add nim=0.17.2-r2 nimble=0.8.10-r0 \
 && apk add git=2.18.0-r0 git-bash-completion=2.18.0-r0 \
 && apk add ctags=5.8-r5 \
 && apk add python3-dev=3.6.4-r1 gcc=6.4.0-r8 musl-dev=1.1.19-r10 neovim=0.3.0-r0 \
 && pip3 install neovim \
 && rm -rf /var/cache/apk/APKINDEX* 
