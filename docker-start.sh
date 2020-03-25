#!/bin/bash

volume_root="/data"
volume_conf="${volume_root}/conf"
app_conf="/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/META-INF"
# 处理首次共享目录
if [ ! -d "${app_conf}/conf/user/" ]; then
    cp -r "${volume_conf}/" "${app_conf}/"
fi

exec "$@"
