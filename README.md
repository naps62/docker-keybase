# A Keybase docker image

Comes with keybase pre-installed

Useful for fetching secrets in a CI environment

## Usage

Dockerfile:

```
# Dockerfile
FROM naps62:docker-keybase

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
```


Entrypoint: 

```
# entrypoint.sh


keybase oneshot
git clone keybase://your/secret/repo
```
