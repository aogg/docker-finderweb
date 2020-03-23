#!/bin/bash

volume_root="/data"
volume_conf="${volume_root}/conf"
app_conf="/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/META-INF/"
# 处理首次共享目录
if ! test -d $volume_conf; then
    mkdir -p $volume_conf
    cp -r "${app_conf}/conf/" $volume_root
    
fi

rm -Rf "${app_conf}/conf"
ln -s $volume_conf $app_conf

exec "$@"
