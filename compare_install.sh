#/bin/bash

echo "Starting update"
sudo apt-get update
echo "Installing required packages for redis"
sudo apt-get install build-essential tcl
echo "Installing redis"
mkdir tmp
cd tmp
wget http://download.redis.io/redis-stable.tar.gz
tar -xzvf redis-stable.tar.gz
cd redis-stable
make
make test
sudo make install
cd ../..
sleep 1
echo "Installing fio"
sudo apt-get install fio
echo "Installing collectd"
sudo apt-get install collectd collectd-utils
echo "Installing nuttcp"
sudo apt-get install nuttcp
echo "Installing netperf"
sudo apt-get install netperf
echo "Installing pxz"
sudo apt-get install pxz
echo "Installing linpack"
wget http://registrationcenter-download.intel.com/akdlm/irc_nas/9128/l_mklb_p_11.3.3.011.tgz
tar -xzf l_mklb_p_11.3.3.011.tgz
echo "Installing stream"
wget http://www.cs.virginia.edu/stream/FTP/Code/stream.c
gcc stream.c -o stream 
echo "Installing SysBench"
sudo apt-get install sysbench

