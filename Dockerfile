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

#install tool to inject custom tags to struct
RUN go get -v -u github.com/favadi/protoc-go-inject-tag
