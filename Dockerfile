FROM grpc/go:latest

#install prototools utilites
RUN go get -v -u sourcegraph.com/sourcegraph/prototools/cmd/protoc-gen-doc && \
	go get -v -u sourcegraph.com/sourcegraph/prototools/cmd/protoc-gen-json && \
	go get -v -u sourcegraph.com/sourcegraph/prototools/cmd/protoc-gen-dump
