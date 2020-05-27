#!/bin/bash

# for current run
setenforce 0
# for next boots
sed -i "s/SELINUX=enforcing/SELINUX=disabled/g" /etc/selinux/config