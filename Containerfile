FROM docker.io/jekyll/minimal:latest
RUN mkdir /data
WORKDIR /data
VOLUME /data
ENTRYPOINT ["jekyll"]
