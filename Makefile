NAME="go-demo"
VERSION="latest"

image:
	docker build -t $(NAME):$(VERSION) .
