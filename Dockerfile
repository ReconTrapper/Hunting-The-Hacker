FROM golang:1.19

WORKDIR $GOPATH/src/github.com/edoardottt/scilla

COPY . .
RUN go mod download golang.org/x/sys
RUN go install -v ./...
RUN mv ./lists/ /usr/bin/

ENTRYPOINT ["scilla"]