# Build container
FROM golang:alpine AS builder
COPY external-storage /go/src/github.com/kubernetes-incubator/external-storage

WORKDIR /go/src/github.com/kubernetes-incubator/external-storage/iscsi/targetd

ARG BUILD_ARCH=arm

ENV CGO_ENABLED=0
ENV GOARCH=${BUILD_ARCH}
ENV GOOS=linux

ONBUILD RUN mkdir -p /build \
 && go build -o /build/targetd .


# Runtime container
FROM alpine
LABEL authors="Raffaele Spazzoli <rspazzol@redhat.com>"
COPY --from=builder /build/targetd /iscsi-controller
ENTRYPOINT ["/iscsi-controller"]
