#!/bin/bash

#Src 
BMV2_COMMIT="b447ac4c0cfd83e5e72a3cc6120251c1e91128ab"  # August 10, 2019
PI_COMMIT="41358da0ff32c94fa13179b9cee0ab597c9ccbcc"    # August 10, 2019
P4C_COMMIT="69e132d0d663e3408d740aaf8ed534ecefc88810"   # August 10, 2019
PROTOBUF_COMMIT="v3.2.0"

cd ~
if [ ! -d "p4-git/" ]
then
	mkdir p4-git/
fi
cd p4-git/

git clone https://github.com/p4lang/behavioral-model.git
cd behavioral-model/
git checkout ${BMV2_COMMIT}
cd ..
tar -zcvf ~/p4-git/'behavioral-model.tar.gz' 'behavioral-model'

git clone https://github.com/p4lang/behavioral-model.git bmv2
tar -zcvf ~/p4-git/'bmv2.tar.gz' 'bmv2'

git clone https://github.com/grpc/grpc.git
cd grpc/
git checkout ${GRPC_COMMIT}
git submodule update --init --recursive
cd ..
tar -zcvf ~/p4-git/'grpc.tar.gz' 'grpc'

git clone git://github.com/mininet/mininet mininet
tar -zcvf ~/p4-git/'mininet.tar.gz' 'mininet'

git clone https://github.com/nanomsg/nnpy.git
cd nnpy/
git checkout c7e718a5173447c85182dc45f99e2abcf9cd4065
cd ..
tar -zcvf ~/p4-git/'nnpy.tar.gz' 'nnpy'

git clone https://github.com/p4lang/p4c
cd p4c/
git checkout ${P4C_COMMIT}
git submodule update --init --recursive
cd ..
tar -zcvf ~/p4-git/'p4c.tar.gz' 'p4c'

git clone https://github.com/p4lang/p4c-bm.git p4c-bmv2
tar -zcvf ~/p4-git/'p4c-bmv2.tar.gz' 'p4c-bmv2'

git clone https://github.com/petarpenkov/p4-mininet-tutorials
tar -zcvf ~/p4-git/'p4-mininet-tutorials.tar.gz' 'p4-mininet-tutorials'

git clone https://github.com/p4lang/PI.git
cd PI/
git checkout ${PI_COMMIT}
git submodule update --init --recursive
cd ..
tar -zcvf ~/p4-git/'PI.tar.gz' 'PI'

git clone https://github.com/google/protobuf.git
cd protobuf/
git checkout ${PROTOBUF_COMMIT}
cd ..
tar -zcvf ~/p4-git/'protobuf.tar.gz' 'protobuf'

git clone -b 0.9.2 https://github.com/apache/thrift.git thrift-0.9.2
tar -zcvf ~/p4-git/'thrift-0.9.2.tar.gz' 'thrift-0.9.2'

git clone https://github.com/p4lang/tutorials.git
tar -zcvf ~/p4-git/'tutorials.tar.gz' 'tutorials'

wget https://github.com/nanomsg/nanomsg/archive/1.0.0.tar.gz -O nanomsg-1.0.0.tar.gz

rm -rf behavioral-model/
rm -rf bmv2/
rm -rf grpc/
rm -rf mininet/
rm -rf nnpy/
rm -rf p4c/
rm -rf p4c-bmv2/
rm -rf p4-mininet-tutorials/
rm -rf PI/
rm -rf protobuf/
rm -rf thrift-0.9.2/
rm -rf tutorials/
cd ~
