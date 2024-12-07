FROM golang:1.19.3-alpine3.15 as build_stage
ENV CGO_ENABLED 0

WORKDIR /service
COPY . .
RUN go build

FROM alpine:3.21
EXPOSE 8080
RUN apk --no-cache add ca-certificates
RUN addgroup -g 3000 -S gh-oauth-example && adduser -u 100000 -S gh-oauth-example -G gh-oauth-example --no-create-home --disabled-password
USER 100000
COPY --from=build_stage --chown=gh-oauth-example:gh-oauth-example /service/gh-oauth-example /service/gh-oauth-example
COPY --from=build_stage --chown=gh-oauth-example:gh-oauth-example /service/public /service/public
WORKDIR /service
CMD ["./gh-oauth-example"]
