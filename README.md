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
## 官网介绍
(程序员专用) 支持集群部署，允许你同时管理多台机器上的文件或者查看不同机器上的日志；
(程序员专用) grep支持，类似linux系统的grep命令，支持随时查看文件的任意位置，像播放器一样点击进度条的任意位置；
(程序员专用) less支持，类似linux系统的less命令，支持随时查看文件的任意位置，像播放器一样点击进度条的任意位置；
(程序员专用) tail支持，类似linux系统的tail命令；
(超大文件支持) 支持任意大小的文件，无论多大的文件都秒开，性能与文件大小无关。
(多操作系统支持)，纯Java实现，tail，less，grep均不依赖于具体的操作系统，任何服务器都可使用；
支持细粒度的权限控制，能满足不同的权限需求；IT运维或者公司内部资料分享，允许控制文件可见和文件的各种操作。
![官网介绍图tail](http://www.finderweb.net/resource/demo/2.png)

## finderweb和ELK的区别
这二者没有任何可比性，finderweb是个web文件管理器，就好象windows的资源管理器，只不过它是web的。finderweb的tail，less，grep功能可以理解为windows中的一种文件打开方式，仅此而已。
而ELK是个庞大的软件，集日志收集，日志传输，日志分析，日志查询等等功能，可以满足更多业务上的数据需求，而且在功能上跟finderweb没有重合的地方；规模上ELK要庞大的多，代码量上finderweb跟ELK不可同日而语；finderweb只是一个小软件、小工具，它针对的是有web操作服务器上文件的需求的用户，看日志仅仅是这个web文件管理器的一个附加功能，而且这个功能还是针对开发人员的，不是针对业务的。



# 注意
## 想一次分配多个目录到一个空间中
> 可以通过软链接***ln -s*** ，其中要注意要cd到最终ln目录，然后通过相对路径的方式。其中软链接后首次在左边导航看不到，只要点开软链接目录内部即可在下次刷新中看到。

