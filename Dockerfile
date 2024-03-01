# Fixed version of the Dockerfile
# See issue https://github.com/AykutSarac/jsoncrack.com/issues/375
FROM alpine:latest
RUN apk update
RUN apk add git nodejs npm
RUN npm install --ignore-scripts --global pnpm
RUN git clone --depth 1 https://github.com/AykutSarac/jsoncrack.com.git /jsoncrack
RUN addgroup -S appgroup
RUN adduser -S runner -G appgroup
RUN chown -R runner:appgroup /jsoncrack
USER runner
RUN cd /jsoncrack && pnpm install
EXPOSE 3000
WORKDIR /jsoncrack
CMD ["pnpm dev"]
