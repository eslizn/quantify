export CGO_ENABLED := 0
export NO_PROXY := tlinux-mirror.tencent-cloud.com,tlinux-mirrorlist.tencent-cloud.com,localhost,mirrors-tlinux.tencentyun.com,.oa.com,.tencent.com,.local,127.0.0.1
export GOPRIVATE := *.oa.com
export GOPROXY := https://mirrors.tencent.com/go/,direct

ifeq ($(OS),Windows_NT)
	export HTTP_PROXY := http://127.0.0.1:12769
	export HTTPS_PROXY := http://127.0.0.1:12769
endif

fmt:
	go fmt ./... && \
	go mod tidy

dep:
	go get -u -v ./...

test:
	go test -v ./...

build:
	go install -v ./...

watch:
	gin -i --buildArgs="$(wildcard cmd/$(notdir $(CURDIR))/*.go)"
