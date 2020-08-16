#!/bin/bash
# cd ..

echo
echo "preparing for tutorials..."
sudo cp -r tutorials ACORE/

echo "preparing for behavioral-model..."
sudo cp -r behavioral-model tutorials/vm
sudo mkdir tutorials/vm/behavioral-model/mktemp_19237435780532452

echo "preparing for grpc..."
sudo cp -r grpc tutorials/vm

echo "preparing for mininet..."
sudo cp -r mininet tutorials/vm

echo "preparing for nanomsg-1.0.0.tar.gz..."
sudo cp nanomsg-1.0.0.tar.gz tutorials/vm/behavioral-model/mktemp_19237435780532452

echo "preparing for nnpy..."
sudo cp -r nnpy tutorials/vm/behavioral-model/mktemp_19237435780532452

echo "preparing for p4c..."
sudo cp -r p4c tutorials/vm

echo "preparing for PI..."
sudo cp -r PI tutorials/vm

echo "preparing for protobuf..."
sudo cp -r protobuf tutorials/vm

echo "preparing for thrift-0.9.2..."
sudo cp -r thrift-0.9.2 tutorials/vm/behavioral-model/mktemp_19237435780532452

sudo mv ACORE/tutorials tutorials/vm

sudo chown ${USER}: tutorials/vm -R

\cp ACORE/autogen.sh tutorials/vm/protobuf/autogen.sh
\cp ACORE/install_deps.sh tutorials/vm/behavioral-model/install_deps.sh
\cp ACORE/install-nanomsg.sh tutorials/vm/behavioral-model/travis/install-nanomsg.sh
\cp ACORE/install-nnpy.sh tutorials/vm/behavioral-model/travis/install-nnpy.sh
\cp ACORE/install-thrift.sh tutorials/vm/behavioral-model/travis/install-thrift.sh
\cp ACORE/root-bootstrap.sh tutorials/vm/root-bootstrap.sh
\cp ACORE/user-bootstrap.sh tutorials/vm/user-bootstrap.sh
