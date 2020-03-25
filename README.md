# docker-finderweb
http://www.finderweb.net/    docker版

hub.docker.com
https://hub.docker.com/r/adockero/finderweb


# 使用

## 体验使用
```bash
docker run -d --name finderweb -p 8080:8080 adockero/finderweb
```
然后访问http://localhost:8080

## 保留配置文件
```bash
docker run -d --name finderweb -v $(pwd)/conf/:/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/META-INF/conf/ adockero/finderweb
```

## 构建
```bash
docker build -t adockero/finderweb .
```

# 介绍

## finderweb和ELK的区别
这二者没有任何可比性，finderweb是个web文件管理器，就好象windows的资源管理器，只不过它是web的。finderweb的tail，less，grep功能可以理解为windows中的一种文件打开方式，仅此而已。
而ELK是个庞大的软件，集日志收集，日志传输，日志分析，日志查询等等功能，可以满足更多业务上的数据需求，而且在功能上跟finderweb没有重合的地方；规模上ELK要庞大的多，代码量上finderweb跟ELK不可同日而语；finderweb只是一个小软件、小工具，它针对的是有web操作服务器上文件的需求的用户，看日志仅仅是这个web文件管理器的一个附加功能，而且这个功能还是针对开发人员的，不是针对业务的。
