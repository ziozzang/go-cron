FROM golang:alpine
COPY . /go/src/go-cron
WORKDIR /go/src/go-cron

ENV GOPATH /go/src/go-cron/Godeps/_workspace:$GOPATH
RUN apk update && apk upgrade && \
    apk add libc6-compat bash curl wget python2 py2-pip vim mc byobu tar htop && \
    rm -rf /var/cache/apk/* 
RUN go install -v 

ENTRYPOINT ["go-cron"]
