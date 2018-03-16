FROM verdaccio/verdaccio:latest

USER root
RUN  apk add --update apache2-utils

USER verdaccio
ADD config.yaml /verdaccio/conf/config.yaml
