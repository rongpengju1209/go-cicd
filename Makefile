MAJOR=1
MINOR=1
MINOR_BEGIN_AT="2022-09-02T00:00:00+08:00"
PATCH=$(shell git rev-list --count --since="${MINOR_BEGIN_AT}" HEAD)
BETA=$(shell test -n "$(shell git status -s)" && echo "-beta")
VERSION=$(MAJOR).$(MINOR).$(PATCH)$(BETA)

image:
	docker build -t $(NAME):$(VERSION) .
