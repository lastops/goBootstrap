.PHONY: all

GO15VENDOREXPERIMENT := 1
export GO15VENDOREXPERIMENT

all: build

help:
	@echo "make <cmd>"
	@echo ""
	@echo "commands:"
	@echo "	test		- run tests"
	@echo "	build		- build everything"
	@echo "	clean		- cleanup"
	@echo "	deb			- build debian package"


clean:
	@rm -rf ./bin
	@rm -rf obj-x86_64-linux-gnu
	@rm -rf pkg
	@rm -rf debian/debhelper-build-stamp debian/files debian/interface-ptr-generator.substvars debian/interface-ptr-generator/ debian/interface-ptr-generator.debhelper.log

build: test build_bin

build_bin:
	@go build -o ./bin/ipg ./main

test:
	@go test ./ipg/...

deb:
	@debuild -b
