# README

This repository contains my LaTeX template.

## How to build

We suggest using the Docker image 
[adnrv/texlive](https://hub.docker.com/r/adnrv/texlive/).

First, be sure you have Docker installed on your machine.

Then, run:

```
./scripts/build.sh
```

The first time it would take a while - it'll download the Docker image
needed.

The scripts arguments will be forwarded to the `latexmk` command.
E.g. to generate a pdf:
```
./scripts/build.sh -pdf
```

To run continuously:
```
./scripts/build.sh -pvc
```


