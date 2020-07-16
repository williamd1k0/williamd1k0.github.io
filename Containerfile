FROM jekyll/minimal
RUN mkdir /data
WORKDIR /data
VOLUME /data
ENTRYPOINT ["jekyll"]
