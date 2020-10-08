#!/usr/bin/env bash

###################################################################################
# Linux 系统用户管理
# @author: developer
###################################################################################

# 创建用户组
groupadd elk
groupadd dctest
# 创建新用户，-g elk 设置其用户组为 elk，-p elk 设置其密码为 elk
useradd elk -g elk -p elk
useradd dctest -g dctest -p dctest
# 更改 /opt 文件夹及内部文件的所属用户及组为 elk:elk
chown -R elk:elk /opt
chown -R dctest:dctest ./test
