# Lightweight Docker Image for the Bash Automated Testing System

[![](https://images.microbadger.com/badges/image/lucor/bats.svg)](http://microbadger.com/images/lucor/bats "Get your own image badge on microbadger.com")

A lightweight Docker image for [Bash Automated Testing System (bats)](https://github.com/sstephenson/bats)

It provides:

  - bats `v0.4.0`
  - alpine `v3.4`

## Examples

```
  docker run --rm -ti \
    -v $(pwd):/app \
    lucor/bats bats -v
```
