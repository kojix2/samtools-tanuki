CONFIG=./myconfig.rb rake -f mruby/Rakefile
cd samtools
autoreconf -i
./configure
make
