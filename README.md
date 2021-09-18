# How to run product page

## Prerequisite

* Python 3.8

## Bash
```bash
docker build -t productpage .
```

## Run
```bash
docker run -d --rm -p 8083:9080 --name productpage-service --link sharp_keldysh --link ratings --link reviews-service - \
e DETAILS_HOSTNAME="http://sharp_keldysh:9080" -e RATINGS_HOSTNAME="http://ratings:9080" -e REVIEWS_HOSTNAME="http://reviews-service:9080" productpage
```
