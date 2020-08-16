#!/bin/bash
cd ..
echo "clean tutorials..."
sudo chown ${USER}: tutorials/vm -R
rm -rf tutorials/vm/behavioral-model
rm -rf tutorials/vm/grpc
rm -rf tutorials/vm/mininet
rm -rf tutorials/vm/p4c
rm -rf tutorials/vm/PI
rm -rf tutorials/vm/protobuf
rm -rf tutorials/vm/tutorials
