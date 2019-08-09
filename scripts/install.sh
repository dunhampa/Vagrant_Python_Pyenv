#!/bin/bash
set -x

#Variables
#IP_HOST is the network setup in vagranfile
IP_HOST=192.168.199.10


 git clone https://github.com/pyenv/pyenv.git ~/.pyenv


 echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
 echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc

source  ~/.bashrc

 echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc

 sudo apt-get update;  sudo apt-get install -y --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

/home/vagrant/.pyenv/bin/pyenv install 2.7.8

 /home/vagrant/.pyenv/bin/pyenv install 3.7.4

 git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

 echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

source  ~/.bashrc