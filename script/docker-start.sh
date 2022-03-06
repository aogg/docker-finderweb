#!/bin/bash

volume_root="/tmp-finderweb-data"
volume_conf="${volume_root}/finderweb"

# 2.5.5
# app_conf="/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/META-INF"

app_conf="/usr/local/tomcat/webapps/ROOT/WEB-INF/finderweb"
# 处理首次共享目录
if [ ! -d "${app_conf}/user/" ]; then
    cp -r "${volume_conf}/" "${app_conf}/"
fi

exec "$@"
