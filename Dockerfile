FROM alpine:latest

RUN apk add --update \
        bash \
        the_silver_searcher \
    && rm -rf /var/cache/apk/*

COPY ./bin/ /bin/

ENTRYPOINT ["bin/check-colours"]
CMD ["/bin/bash"]
