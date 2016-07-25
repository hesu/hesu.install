#!/bin/bash

### LUAJIT
cd
wget http://luajit.org/download/LuaJIT-2.0.4.tar.gz
tar -xvf LuaJIT-2.0.4.tar.gz
cd LuaJIT-2.0.4
make
make install

### LUAROCKS
yum -y install lua-devel
wget http://luarocks.org/releases/luarocks-2.0.6.tar.gz
tar -xvf luarocks-2.0.6.tar.gz
cd luarocks-2.0.6
ls
./configure
make
make install
which luarocks

### LUASOCKET
yum -y install unzip
luarocks install luasocket
