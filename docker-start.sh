#!/bin/bash

volume_root="/data"
volume_conf="${volume_root}/conf"
# 处理首次共享目录
if ! test -d $volume_conf; then
    mkdir -p $volume_conf
    cp -r /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/META-INF/conf/ $volume_root
fi
