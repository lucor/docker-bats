.PHONY: build test

NAME=lucor/bats
VERSION=0.4.0

build:
	docker build \
		--tag $(NAME):latest \
		--tag $(NAME):$(VERSION) \
		.

test:
	docker run --rm -t -v $(CURDIR)/tests:/tests lucor/bats /tests/test_image.bats
