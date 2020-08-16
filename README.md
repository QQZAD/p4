# p4
## 获取p4自动化安装仓库
<br>git clone https://github.com/QQZAD/p4.git
<br>git config --global push.default matching
<br>git config --global user.email "email@example.com"
<br>git config --global user.name "user_name"<br/>
## 搭建p4运行环境
<br>建议系统版本Ubuntu 16.04！
<br>将以下11个tar.gz文件放在p4/下
<br>behavioral-model.tar.gz
<br>grpc.tar.gz
<br>mininet.tar.gz
<br>nanomsg-1.0.0.tar.gz
<br>nnpy.tar.gz
<br>p4c.tar.gz
<br>p4-mininet-tutorials.tar.gz
<br>PI.tar.gz
<br>protobuf.tar.gz
<br>thrift-0.9.2.tar.gz
<br>tutorials.tar.gz<br/>
<br>cd p4/
<br>./INSTALL.sh<br/>
## 运行p4示例代码
<br>用户名：p4
<br>登录密码：p4
<br>p4-mininet-tutorials的配置：
<br>解压bmv2.tar.gz、p4c-bmv2.tar.gz和p4-mininet-tutorials.tar.gz
<br>保证bmv2、p4c-bmv2和p4-mininet-tutorials在同一目录下
<br>cd ~/bmv2/
<br>./autogen.sh
<br>./configure
<br>make
<br>cd ~/p4c-bmv2/
<br>sudo pip install --upgrade pip
<br>sudo pip install -r requirements.txt
<br>sudo python setup.py install
<br>cd ~/p4-mininet-tutorials/examples/
<br>sudo ./veth_setup.sh<br/>
<br>以[Basic Forwarding]为例：
<br>cd ~/tutorials/exercises/basic/
<br>mkdir backup/
<br>mv basic.p4 backup/basic.p4
<br>cp solution/basic.p4 ./
<br>sudo mn -c
<br>按照tutorials/exercises/basic/README.md操作...
## 维护人员指南
<br>cd p4/
<br>git status
<br>git add .
<br>git commit -m "p4"
<br>git push<br/>
<br>cd ACORE/
<br>*清除安装文件:
<br>./clean_tutorials.sh
<br>*获取必备仓库:
<br>./GET_GIT.sh
<br>*更新必备仓库:
<br>./UPDATE_GIT.sh
