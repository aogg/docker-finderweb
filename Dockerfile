FROM tomcat:jre8-slim

ARG FINDERWEB_VERSION='2.5.4'

# 1. 创建用户: tomcat
# 如果已有可忽略
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/* && \
    # 1. 创建用户: tomcat
    # 如果已有可忽略
    useradd tomcat && \
    # 3. 删除并重建ROOT目录, 如有重要资料请注意备份
    rm -rf $CATALINA_HOME/webapps/ROOT && \
    mkdir -p $CATALINA_HOME/webapps/ROOT && \
    # 4. 下载并解压到ROOT目录
    wget -O /tmp/finder-web-${FINDERWEB_VERSION}.zip http://www.finderweb.net/download/finder-web-${FINDERWEB_VERSION}.war && \
    unzip -o -d ${CATALINA_HOME}/webapps/ROOT /tmp/finder-web-${FINDERWEB_VERSION}.zip && \
    rm -f /tmp/finder-web-${FINDERWEB_VERSION}.zip && \
    # 5. 为应用目录赋权限
    chown -R tomcat:tomcat $CATALINA_HOME && \
    chmod -R 755 $CATALINA_HOME

    # 6. 启动Tomcat
    # sudo -u tomcat $CATALINA_HOME/bin/startup.sh

