#!/bin/bash
shdir=$(cd `dirname $0`; pwd)
sudo echo "安装P4..."
# git clone https://github.com/p4lang/behavioral-model.git
if [ ! -d "behavioral-model/" ]
then
	tar -zxf 'behavioral-model.tar.gz'
else
	echo -e "\e[32m[1] finding behavioral-model...\e[0m"
fi
# git clone https://github.com/grpc/grpc.git
if [ ! -d "grpc/" ]
then
	tar -zxf 'grpc.tar.gz'
else
	echo -e "\e[32m[2] finding grpc...\e[0m"
fi
# git clone git://github.com/mininet/mininet mininet
if [ ! -d "mininet/" ]
then
	tar -zxf 'mininet.tar.gz'
else
	echo -e "\e[32m[3] finding mininet...\e[0m"
fi
# git clone https://github.com/nanomsg/nnpy.git
if [ ! -d "nnpy/" ]
then
	tar -zxf 'nnpy.tar.gz'
else
	echo -e "\e[32m[4] finding nnpy...\e[0m"
fi
# git clone https://github.com/p4lang/p4c
if [ ! -d "p4c/" ]
then
	tar -zxf 'p4c.tar.gz'
else
	echo -e "\e[32m[5] finding p4c...\e[0m"
fi
# git clone https://github.com/petarpenkov/p4-mininet-tutorials
if [ ! -d "p4-mininet-tutorials/" ]
then
	tar -zxf 'p4-mininet-tutorials.tar.gz'
else
	echo -e "\e[32m[6] finding p4-mininet-tutorials...\e[0m"
fi
# git clone https://github.com/p4lang/PI.git
if [ ! -d "PI/" ]
then
	tar -zxf 'PI.tar.gz'
else
	echo -e "\e[32m[7] finding PI...\e[0m"
fi
# git clone https://github.com/google/protobuf.git
if [ ! -d "protobuf/" ]
then
	tar -zxf 'protobuf.tar.gz'
else
	echo -e "\e[32m[8] finding protobuf...\e[0m"
fi
# git clone -b 0.9.2 https://github.com/apache/thrift.git thrift-0.9.2
if [ ! -d "thrift-0.9.2/" ]
then
	tar -zxf 'thrift-0.9.2.tar.gz'
else
	echo -e "\e[32m[9] finding thrift-0.9.2...\e[0m"
fi
# git clone https://github.com/p4lang/tutorials.git
if [ ! -d "tutorials/" ]
then
	tar -zxf 'tutorials.tar.gz'
else
	echo -e "\e[32m[10] finding tutorials...\e[0m"
fi
# wget https://github.com/nanomsg/nanomsg/archive/1.0.0.tar.gz -O nanomsg-1.0.0.tar.gz

sudo apt-get -f install
sudo apt-get install libjudy-dev -y
sudo apt-get install python python-pip cmake -y
bash ACORE/pip.sh
bash ACORE/check_git.sh
bash ACORE/prepare_install.sh
# <<'COMMENT'
cd tutorials/vm/
sudo ./root-bootstrap.sh
sudo apt-get install autoconf libtool libsysfs-dev -y
sudo ./user-bootstrap.sh
# COMMENT

cd $shdir/
sudo rm -rf behavioral-model
sudo rm -rf grpc
sudo rm -rf mininet
sudo rm -rf nnpy
sudo rm -rf p4c
sudo rm -rf p4-mininet-tutorials
sudo rm -rf PI
sudo rm -rf protobuf
sudo rm -rf thrift-0.9.2
sudo rm -rf tutorials

sudo reboot
