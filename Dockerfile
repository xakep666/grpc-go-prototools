FROM grpc/go:latest

#install prototools utilites
RUN go get -v -u sourcegraph.com/sourcegraph/prototools/cmd/protoc-gen-doc && \
	go get -v -u sourcegraph.com/sourcegraph/prototools/cmd/protoc-gen-json && \
	go get -v -u sourcegraph.com/sourcegraph/prototools/cmd/protoc-gen-dump && \
	apt-get install -y subversion && \
	svn co https://github.com/sourcegraph/prototools/trunk/templates /go/src/github.com/sourcegraph/prototools/templates && \
	rm -rf /go/src/github.com/sourcegraph/prototools/templates/.svn && \
	apt-get remove -y subversion && \
	apt-get autoremove -y
