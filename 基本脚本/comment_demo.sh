#!/usr/bin/env bash

#--------------------------------------------
# shell 注释示例
# author：ENGINEER
#--------------------------------------------

# echo '这是单行注释'
# THIS IS JUST COMMENT
########## 这是分割线 ##########

: << EOF
echo '这是多行注释'
echo '这是多行注释'
echo '这是多行注释'
EOF

<<comment
echo 'hello linux'
echo 'hello C'
comment
# Execute: ./comment_demo.sh
# Output: null
