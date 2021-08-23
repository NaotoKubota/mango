# Dockerfile for Mango

Dockerfile for [Mango](https://github.com/dphansti/mango): ChIA-PET Analysis Software

It's on [dockerhub](https://hub.docker.com/r/naotokubota/mango) and [github](https://github.com/NaotoKubota/mango).

## tags and links
- `1.0` [(master/Dockerfile)](https://github.com/NaotoKubota/mango/blob/master/Dockerfile)

## how to build

```sh
docker pull naotokubota/mango:1.0
```

or

```sh
git clone git@github.com:NaotoKubota/mango.git
cd mango
docker build --rm -t naotokubota/mango:1.0 .
```

## running

```sh
docker run --rm -it naotokubota/mango
```
