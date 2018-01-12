#!/bin/bash

## Func: 1.Install VIM/DOCKER
##       2.Replace the default registry-mirrors into Ali registry-mirrors.

yum install docker -y
service docker start
chkconfig docker on
systemctl enable docker.service
yum install vim -y
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["56px195b.mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
