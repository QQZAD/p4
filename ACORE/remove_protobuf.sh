#!/bin/bash
echo "Protobuf的全称是Google Protocol Buffers，提供通信协议、RPC系统、持续数据存储等领域的高效数据交换格式，能够轻便地序列化结构化数据，且与平台和语言无关，与Json、XML等技术相比，Protobuf的效率更高、速度更快且空间开销更小。"
echo "protoc --version"
sudo apt-get remove --purge libprotobuf-dev protobuf-compiler -y
sudo rm -rf /usr/bin/protoc

