FROM golang
ADD . /go/src/github.com/donallison/go-pagerduty
WORKDIR /go/src/github.com/donallison/go-pagerduty
RUN go get ./... && go test -v -race -cover ./...
