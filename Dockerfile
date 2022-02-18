FROM alpine:latest
RUN apk add curl;
COPY checker.sh /
CMD ["/checker.sh"]
