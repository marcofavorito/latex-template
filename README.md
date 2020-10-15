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

## Vagrant

To use Vagrant, first... [install Vagrant](https://www.vagrantup.com/) :open_mouth:

Then:
```
vagrant up
vagrant ssh
cd /vagrant
```

## License

Shield: [![CC BY 4.0][cc-by-shield]][cc-by]

This work is licensed under a [Creative Commons Attribution 4.0 International
License][cc-by].

[![CC BY 4.0][cc-by-image]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg

