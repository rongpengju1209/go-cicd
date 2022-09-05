FROM golang AS build-env
ENV GOPROXY=https://goproxy.cn
ADD . /go/src/app
WORKDIR /go/src/app
RUN go get -u -v github.com/gin-gonic/gin
RUN GOOS=linux GOARCH=386 go build -v -o /go/src/app/app-server

FROM alpine
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
COPY --from=build-env /go/src/app/app-server /opt/argo-go/app-server
WORKDIR /opt/argo-go
EXPOSE 8080
CMD [ "./app-server" ]
