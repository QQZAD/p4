#!/bin/bash

#Src 
BMV2_COMMIT="b447ac4c0cfd83e5e72a3cc6120251c1e91128ab"  # August 10, 2019
PI_COMMIT="41358da0ff32c94fa13179b9cee0ab597c9ccbcc"    # August 10, 2019
P4C_COMMIT="69e132d0d663e3408d740aaf8ed534ecefc88810"   # August 10, 2019
PROTOBUF_COMMIT="v3.2.0"
GRPC_COMMIT="v1.3.2"

shdir=$(cd `dirname $0`; pwd)
cd $shdir
cd ..

# git clone https://github.com/p4lang/behavioral-model.git
echo -e "\e[32m[1]updating behavioral-model...\e[0m"
cd behavioral-model/
git checkout master
git reset HEAD
git branch
git init
git pull
git checkout ${BMV2_COMMIT}
cd ..

# git clone https://github.com/grpc/grpc.git
echo -e "\e[32m[2]updating grpc...\e[0m"
cd grpc/
git checkout master
git reset HEAD
git branch
git init
git pull
git checkout ${GRPC_COMMIT}
git submodule update --init --recursive
cd ..

# git clone git://github.com/mininet/mininet mininet
echo -e "\e[32m[3]updating mininet...\e[0m"
cd mininet/
git init
git pull
cd ..

# git clone https://github.com/nanomsg/nnpy.git
echo -e "\e[32m[4]updating nnpy...\e[0m"
cd nnpy/
git checkout master
git reset HEAD
git branch
git init
git pull
git checkout c7e718a5173447c85182dc45f99e2abcf9cd4065
cd ..

# git clone https://github.com/p4lang/p4c
echo -e "\e[32m[5]updating p4c...\e[0m"
cd p4c/
git checkout master
git reset HEAD
git branch
git init
git pull
git checkout ${P4C_COMMIT}
git submodule update --init --recursive
cd ..

# git clone https://github.com/petarpenkov/p4-mininet-tutorials
echo -e "\e[32m[6]updating p4-mininet-tutorials...\e[0m"
cd p4-mininet-tutorials/
git init
git pull
cd ..

# git clone https://github.com/p4lang/PI.git
echo -e "\e[32m[7]updating PI...\e[0m"
cd PI/
git checkout master
git reset HEAD
git branch
git init
git pull
git checkout ${PI_COMMIT}
git submodule update --init --recursive
cd ..

# git clone https://github.com/google/protobuf.git
echo -e "\e[32m[8]updating protobuf...\e[0m"
cd protobuf/
git checkout master
git reset HEAD
git branch
git init
git pull
git checkout ${PROTOBUF_COMMIT}
cd ..

# git clone -b 0.9.2 https://github.com/apache/thrift.git thrift-0.9.2
echo -e "\e[32m[9]updating thrift-0.9.2...\e[0m"
cd thrift-0.9.2/
git init
git pull
cd ..

# git clone https://github.com/p4lang/tutorials.git
echo -e "\e[32m[10]updating tutorials...\e[0m"
cd tutorials/
git init
git pull
cd ..
