# Dokku Verdaccio

Private npm registry server deployed as a dokku app.

## Setup

```bash
dokku apps:create my-registry
dokku storage:mount my-registry /var/lib/dokku/data/storage/my-registry:/verdaccio/storage
dokku config:set my-registry AUTH_USER=user AUTH_PASSWORD=$(openssl rand -hex 16)
dokku ps:set-restart-policy my-registry unless-stopped
dokku domains:add my-registry my-registry.example.com
dokku letsencrypt my-registry
```

## Deploy

```bash
git remote add dokku dokku@dokku.example.com:my-registry
git push dokku master
```

## Test

```bash
...
```
