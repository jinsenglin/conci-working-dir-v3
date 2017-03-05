FROM golang:1.8.0

RUN apt-get update && \
    apt-get install -y build-essential libssl-dev && \
    curl https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | sh

RUN bash -c "source $HOME/.profile && nvm install 4.8.0"
