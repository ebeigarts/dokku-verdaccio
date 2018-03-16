FROM verdaccio/verdaccio:2

USER root
RUN  apk add --update apache2-utils
WORKDIR /verdaccio
COPY . /verdaccio

USER verdaccio
ENTRYPOINT [""]
CMD ["/verdaccio/run"]
