# Dokku Verdaccio

Private npm registry server deployed as a dokku app.

## Setup

```bash
dokku apps:create my-registry
dokku config:set my-registry PORT=5000
dokku storage:mount my-registry /var/lib/dokku/data/storage/my-registry:/verdaccio/storage
ssh root@dokku.example.com "chown 100:101 /var/lib/dokku/data/storage/my-registry/"
dokku ps:set-restart-policy my-registry unless-stopped
dokku domains:add my-registry my-registry.example.com
```

## Deploy

```bash
git remote add dokku dokku@dokku.example.com:my-registry
git push dokku master
```

Enable SSL after first deploy:

```bash
dokku letsencrypt my-registry
```

## Test

```bash
cd ../mypkg # e.g. node library with package.json containing name: @my/pkg
npm login --registry=https://my-registry.example.com/ --scope @my
npm publish --registry=https://my-registry.example.com/
```
