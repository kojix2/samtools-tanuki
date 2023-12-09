#!/bin/sh
set -e
set -u

git submodule update --init --recursive

CONFIG=./myconfig.rb rake -f mruby/Rakefile
cd samtools
autoreconf -i
./configure
make

./samtools tanuki
