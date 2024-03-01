# Fixed version of the Dockerfile
# See issue https://github.com/AykutSarac/jsoncrack.com/issues/375
FROM alpine:latest
RUN apk update
RUN apk add npm
RUN npm install --ignore-scripts --global http-server
COPY jsoncrack.com/src/out /jsoncrack
RUN addgroup -S appgroup
RUN adduser -S runner -G appgroup
RUN chown -R runner:appgroup /jsoncrack
USER runner
EXPOSE 3000
WORKDIR /jsoncrack
CMD ["/usr/local/bin/http-server", "/jsoncrack"]
