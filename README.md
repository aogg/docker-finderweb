# docker-finderweb
多项目日志web查看系统，并有tail，less等功能  
http://www.finderweb.net/    docker版

hub.docker.com
https://hub.docker.com/r/adockero/finderweb


[![finderweb](http://dockeri.co/image/adockero/finderweb)](https://hub.docker.com/r/adockero/finderweb)

# 使用

## 体验使用
```bash
docker run -d --name finderweb -p 8080:8080 adockero/finderweb
```
然后访问http://localhost:8080



# 2.5.8版本使用
## 保留配置文件
```bash
docker run -d --restart=always --name finderweb \
  -v $(pwd)/conf/:/usr/local/tomcat/webapps/ROOT/WEB-INF/finderweb/ \
  adockero/finderweb
```


# 2.5.5版本使用
## 保留配置文件
```bash
docker run -d --restart=always --name finderweb \
  -v $(pwd)/conf/:/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/META-INF/conf/ \
  adockero/finderweb
```

## 保留配置文件 + 代码共享
多个项目看通过软链接集中在一个文件空间中，方便只分配一次权限就能看到所有项目日志
```bash
docker run -d --restart=always --name finderweb \
  -v /data/www/:/www/ \
  -v $(pwd)/conf/:/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/META-INF/conf/ \
  adockero/finderweb
```

# 构建
```bash
docker build -t adockero/finderweb .
```


# 注意
## 首次安装后最好设置安全key和会话key

## 想一次分配多个目录到一个空间中
> 可以通过软链接***ln -s*** ，其中要注意要cd到最终ln目录，然后通过相对路径的方式。其中软链接后首次在左边导航看不到，只要点开软链接目录内部即可在下次刷新中看到。

## 首次部署，出现无法进入license，一直提示不存在admin用户
> 那就删除所有共享配置，重新创建容器

## 系统集群补充说明
```
1、这个集群就是全master，账号密码会同步登录 
2、一但同步，每台主机都能看到所有机器的日志 
3、而且为了添加主机，必须安全key一致和会话key一致，这样要小心反向同步和被集群化
```


# 介绍
## 官网介绍
*  (程序员专用) 支持集群部署，允许你同时管理多台机器上的文件或者查看不同机器上的日志；  
*  (程序员专用) grep支持，类似linux系统的grep命令，支持随时查看文件的任意位置，像播放器一样点击进度条的任意位置；  
*  (程序员专用) less支持，类似linux系统的less命令，支持随时查看文件的任意位置，像播放器一样点击进度条的任意位置；  
*  (程序员专用) tail支持，类似linux系统的tail命令；  
*  (超大文件支持) 支持任意大小的文件，无论多大的文件都秒开，性能与文件大小无关。  
*  (多操作系统支持)，纯Java实现，tail，less，grep均不依赖于具体的操作系统，任何服务器都可使用；  
*  支持细粒度的权限控制，能满足不同的权限需求；IT运维或者公司内部资料分享，允许控制文件可见和文件的各种操作。  
![官网介绍图tail](http://www.finderweb.net/resource/demo/2.png)

## finderweb和ELK的区别
这二者没有任何可比性，finderweb是个web文件管理器，就好象windows的资源管理器，只不过它是web的。finderweb的tail，less，grep功能可以理解为windows中的一种文件打开方式，仅此而已。
而ELK是个庞大的软件，集日志收集，日志传输，日志分析，日志查询等等功能，可以满足更多业务上的数据需求，而且在功能上跟finderweb没有重合的地方；规模上ELK要庞大的多，代码量上finderweb跟ELK不可同日而语；finderweb只是一个小软件、小工具，它针对的是有web操作服务器上文件的需求的用户，看日志仅仅是这个web文件管理器的一个附加功能，而且这个功能还是针对开发人员的，不是针对业务的。




