FROM jupyter/notebook

WORKDIR /root

RUN apt-get update -y && \
    apt-get install -y wget && \
    wget https://nodejs.org/dist/v6.1.0/node-v6.1.0-linux-x64.tar.xz && \ 
    tar --strip-components 1 -xJf node-v* -C /usr/local && \
    rm node-v*

RUN npm install -g ijavascript

WORKDIR /notebooks

CMD ijs --ip=* --debug

EXPOSE 8888
