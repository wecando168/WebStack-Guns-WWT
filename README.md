# [**[点击查看demo演示]**](http://35.74.161.110:6060/)

# WebStack-Guns-WWT

❤️ 网址导航网站项目，后台springboot

一个网址导航网站项目，具备完整的前后台，可以用于制作自己的网址导航。文件上传集成七牛云接口，前端懒加载。

## 一、项目简介

### 1、项目雏形

WebStack 一个静态网址导航页面

开源项目：

https://github.com/WebStackPage/WebStackPage.github.io

开发环境：

前端基于bootstrap前端框架开发

### 2、当前项目

WebStack-Guns 具有后台管理功能的网址导航页面

开源项目：

https://github.com/wecando168/WebStack-Guns-WWT

下载地址：

https://github.com/wecando168/WebStack-Guns-WWT/archive/refs/heads/master.zip

开发环境：IDEA JAVA1.8

前端设计：WebStackPage

后台框架：Guns	SpringBoot

## 二、IDEA环境下载与调试部署

E:\ideaProjects作为本示范的项目存放目录，下文相关说明都以这个目录为参照

### 1、下载

文件->新建->来自版本控制的项目…

版本控制：Git

URL：https://github.com/wecando168/WebStack-Guns-WWT.git

目录：E:\ideaProjects\WebStack-Guns-WWT

点击“克隆”等待下载完成后IDEA会同步相关依赖，需要点时间

### 2、修改配置文件

E:\ideaProjects\WebStack-Guns\src\main\resources\applicationDEMO.yml

#### 2.1、修改服务器使用的端口（这里使用默认值8000）

server:

port: 8000

#### 2.2、指定guns配置参数（基本不需要调整）

运行日志文件也是图片上传后的存储位置

file-upload-path: E:/ideaProjects/WebStack-Guns-WWT/tmp          #文件上传目录(不配置的话为java.io.tmpdir目录)

#### 2.3、根据自己MySQL数据库端口，修改jdbc链接、用户名、密码

spring:

datasource:

    url: jdbc:mysql://localhost:3305/webstack?autoReconnect=true&useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=CONVERT_TO_NULL&useSSL=false&serverTimezone=CTT

    username: root

    password: *****（数据库连接密码）

filters: wall,mergeStat

#### 2.4、修改完成之后，将该文件名修改为

application.yml

### 3、导入数据库

文件->新建->数据源->MySQL

主机：localhost

端口：3306

用户：root

密码：*****（数据库连接密码）

根据实际情况填写，点击“测试链接”，看到成功后可以“确定”保存

![image](https://user-images.githubusercontent.com/17273297/152751999-37c2d4ca-f9b4-4926-a962-74fd1160bb4e.png)

运行SQL脚本导入原始数据

![image](https://user-images.githubusercontent.com/17273297/152752118-9959aefb-70ed-4e2d-a66c-66f7edaa5a70.png)

E:\ideaProjects\WebStack-Guns-WWT\sql\WebstackDatabaseInitialized.sql

![image](https://user-images.githubusercontent.com/17273297/152758418-5f7763ce-4dd1-4177-9cdd-905e3d0c5952.png)

修改数据源属性，增加数据库名称：Webstack

![image](https://user-images.githubusercontent.com/17273297/152752258-d930d519-26ba-4b75-ade7-801f69249ad3.png)

查看数据源显示表格信息如下，说明已经成功

![image](https://user-images.githubusercontent.com/17273297/152752295-eeb4898c-2789-4c7a-bc2f-a04d77f83e76.png)

###4、指定SDK版本为1.8

文件->项目结构->项目设置->项目

SDK:选择1.8

![image](https://user-images.githubusercontent.com/17273297/152752337-b86331e7-05db-479e-8f22-cd1ae2f6de6e.png)

### 5、构建项目

Ctrl+F9进行项目构建，显示如下说明编译成功

![image](https://user-images.githubusercontent.com/17273297/152752364-f3993171-37b1-4e2e-9c4d-14ba84aab2c7.png)

### 6、项目打包

视图->工具窗口->Maven

当前项目->生命周期->package

双击，或者右键”运行Maven构建”

查看日志，显示"BULID SUCCESS"说明构建成功

![image](https://user-images.githubusercontent.com/17273297/152752421-ed22f055-5e78-4fb5-a6f8-16cb201172f1.png)

### 7、启动服务

项目target目录下找到“Webstack-Guns-WWT-1.0.jar

Ctrl+Shift+F10

### 8、项目查看

浏览器打开：http://127.0.0.1:8000/

![image](https://user-images.githubusercontent.com/17273297/152757709-7a4fe94f-a7da-45ee-b164-c5907c6512df.png)


### 9、进入后台，修改内容生成自己的导航内容

http://127.0.0.1:8000/login

账号：admin

密码：111111

编辑分类内容

![image](https://user-images.githubusercontent.com/17273297/152757623-93795a06-36d6-49b1-a199-9cf86ff06770.png)


替换导航内容为自己想要的内容

![image](https://user-images.githubusercontent.com/17273297/152757487-d39502c1-4d0d-482d-b2d8-6fb86014efb4.png)


修改后台默认管理及相关人员的信息

![image](https://user-images.githubusercontent.com/17273297/152757434-f0206f5e-f245-4070-9036-efb08126fcb5.png)



### 10、重新打包，发布上线


## 感谢

前端设计：[**WebStackPage**](https://github.com/WebStackPage/WebStackPage.github.io)

后端参考：[**[jsnjfz]**](https://github.com/jsnjfz/WebStack-Guns)

后端参考：[**[Nikati]**](https://github.com/Nikati/WebStack-Guns-NKT)

