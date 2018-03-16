FROM verdaccio/verdaccio:2

USER root
RUN  apk add --update apache2-utils
WORKDIR /app
COPY . /app

USER verdaccio
ENTRYPOINT [""]
CMD ["/app/run"]
