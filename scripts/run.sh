#!/usr/bin/env bash

docker run -it -w /home/main --rm -v$(pwd):/home/main adnrv/texlive $@ 

