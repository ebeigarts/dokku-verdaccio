FROM verdaccio/verdaccio:latest

USER root
RUN  apk add --update apache2-utils
ADD config.yaml /verdaccio/conf/config.yaml
ADD run /verdaccio/run

USER verdaccio
ENTRYPOINT [""]
CMD ["/verdaccio/run"]
