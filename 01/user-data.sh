#!/bin/bash
yum install curl --allowerasing -y
yum install jq -y
sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
echo -e "1234\n1234" | passwd ec2-user
echo "Port 4292" >> /etc/ssh/sshd_config
systemctl restart sshd