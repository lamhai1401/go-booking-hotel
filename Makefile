SHELL := /bin/bash

run:
	revel run -a github.com/lamhai1401/go-booking-hotel

test:
	go test -v -coverprofile=c.out -coverpkg ./... ./tests/...
	go tool cover -html=c.out -o coverage.html

.PHONY: test