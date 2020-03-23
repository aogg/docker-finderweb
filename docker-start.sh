#!/bin/bash

volume_root="/data"
volume_conf="${volume_root}/conf"
app_conf="/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/META-INF/"
# 处理首次共享目录
if ! test -d "${app_conf}/conf"; then
    mkdir -p $volume_conf
    cp -r $volume_root "${app_conf}"
    
fi

exec "$@"
