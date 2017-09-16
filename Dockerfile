FROM grpc/go:latest

#install documentation generator
RUN go get -v -u sourcegraph.com/sourcegraph/prototools/cmd/protoc-gen-doc
