FROM verdaccio/verdaccio:2

COPY config.yaml /verdaccio/conf/config.yaml
COPY CHECKS /usr/local/app
