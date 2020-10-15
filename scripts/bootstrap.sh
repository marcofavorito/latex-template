#!/usr/bin/env bash

set -e

apt-get update && apt-get upgrade -y
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

                                                                                
apt-get install -y texlive-full \
    xzdec                       \
    latexmk                     \
    biber                       \
    xpdf                        \
    xzdec                            
                                                                                
#tlmgr update --all                                                              

set +e
