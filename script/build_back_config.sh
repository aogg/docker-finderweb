#!/bin/bash

# 处理首次共享目录
(sleep 10 && catalina.sh stop)& 
echo '延迟关闭'
catalina.sh run;
mkdir -p /data/
cp -r $CATALINA_HOME/webapps/ROOT/WEB-INF/classes/META-INF/conf/ /data/