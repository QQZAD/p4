#!/bin/bash
shdir=$(cd `dirname $0`; pwd)
cd $shdir
cd ..

tar -zxf 'behavioral-model.tar.gz'
rm -rf behavioral-model.tar.gz
tar -zxf 'bmv2.tar.gz'
rm -rf bmv2.tar.gz
tar -zxf 'grpc.tar.gz'
rm -rf grpc.tar.gz
tar -zxf 'mininet.tar.gz'
rm -rf mininet.tar.gz
rm -rf nanomsg-1.0.0.tar.gz
tar -zxf 'nnpy.tar.gz'
rm -rf nnpy.tar.gz
tar -zxf 'p4c.tar.gz'
rm -rf p4c.tar.gz
tar -zxf 'p4c-bmv2.tar.gz'
rm -rf p4c-bmv2.tar.gz
tar -zxf 'p4-mininet-tutorials.tar.gz'
rm -rf p4-mininet-tutorials.tar.gz
tar -zxf 'PI.tar.gz'
rm -rf PI.tar.gz
tar -zxf 'protobuf.tar.gz'
rm -rf protobuf.tar.gz
tar -zxf 'thrift-0.9.2.tar.gz'
rm -rf thrift-0.9.2.tar.gz
tar -zxf 'tutorials.tar.gz'
rm -rf tutorials.tar.gz

ACORE/check_git.sh
echo -e "\e[32m[11]updating bmv2...\e[0m"
cd bmv2/
git init
git pull
cd ..
echo -e "\e[32m[12]updating p4c-bmv2...\e[0m"
cd bmv2/
git init
git pull
cd ..

tar -zcf 'behavioral-model.tar.gz' 'behavioral-model'
# [bmv2](https://github.com/p4lang/behavioral-model)
tar -zcf 'bmv2.tar.gz' 'bmv2'
tar -zcf 'grpc.tar.gz' 'grpc'
tar -zcf 'mininet.tar.gz' 'mininet'
tar -zcf 'nnpy.tar.gz' 'nnpy'
tar -zcf 'p4c.tar.gz' 'p4c'
# [p4c-bmv2](https://github.com/p4lang/p4c-bm)
tar -zcf 'p4c-bmv2.tar.gz' 'p4c-bmv2'
tar -zcf 'p4-mininet-tutorials.tar.gz' 'p4-mininet-tutorials'
tar -zcf 'PI.tar.gz' 'PI'
tar -zcf 'protobuf.tar.gz' 'protobuf'
tar -zcf 'thrift-0.9.2.tar.gz' 'thrift-0.9.2'
tar -zcf 'tutorials.tar.gz' 'tutorials'

rm -rf behavioral-model
rm -rf bmv2
rm -rf grpc
rm -rf mininet
rm -rf nnpy
rm -rf p4c
rm -rf p4c-bmv2
rm -rf p4-mininet-tutorials
rm -rf PI
rm -rf protobuf
rm -rf thrift-0.9.2
rm -rf tutorials

echo -e "\e[32m[13]updating nanomsg...\e[0m"
wget https://github.com/nanomsg/nanomsg/archive/1.0.0.tar.gz -O nanomsg-1.0.0.tar.gz
