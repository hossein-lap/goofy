all:
	docker run -v $(PWD):/src --rm golang:alpine-3.20 go build .

fetch:
	docker run -v $(PWD):/src --rm golang:alpine-3.20 go mod tidy

build:
	docker buildx build -t golang:alpine-3.20 .
