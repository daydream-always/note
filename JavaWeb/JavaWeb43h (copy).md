

# 黑马程序员JavaWeb开发教程，实现javaweb企业开发全流程

# （涵盖Spring+MyBatis+SpringMVC+SpringBoot等）

Web开发-导学课程

18:22

Day01-01. web开发-介绍

12:34

Day01-02. Web前端开发-课程安排

11:12

Day01-03. Web前端开发-HTML-快速入门

15:57



Day01-04. HTML-VSCode安装

08:33

Day01-05. HTML-新浪新闻-实现标题-排版

26:35

Day01-06. HTML-新浪新闻-实现标题-样式1

19:14

Day01-07. HTML-新浪新闻-实现标题-样式2

11:13

Day01-08. HTML-新浪新闻-实现标题-超链接

09:53

Day01-09. HTML-新浪新闻-实现正文-排版

16:18

Day01-10. HTML-新浪新闻-实现正文-布局

17:03

Day01-11. HTML-表格标签

06:05

Day01-12. HTML-表单标签

10:19

Day01-13. HTML-表单项标签

12:12



Day02-01. JS-介绍

07:32

Day02-02. JS-引入方式

05:02

Day02-03. JS-基础语法-书写语法

08:33

Day02-04. JS-基础语法-变量

10:07

Day02-05. JS-基础语法-数据类型&运算符

15:26

Day02-06. JS-函数

08:09

Day02-07. JS-对象-Array数组

19:16

Day02-08. JS-对象-String字符串

07:40

Day02-09. JS-对象-JSON

15:38

Day02-10. JS-对象-BOM

14:34

Day02-11. JS-对象-DOM

20:34

Day02-12. JS-对象-DOM案例

10:27

Day02-13. JS-事件-事件绑定&常见事件

14:46

Day02-14. JS-事件-案例

15:23



Day02-15. Vue-概述

13:43

Day02-16. Vue-指令-v-bind&v-model&v-on

14:33

Day02-17. Vue-指令-v-if&v-show&v-for

11:50

Day02-18. Vue-指令-案例

09:02

Day02-19. Vue-生命周期

07:01



Day03-01. Ajax-介绍

13:45

Day03-02. Ajax-Axios2

21:03



Day03-03. 前端工程化

20:57

Day03-04. 前端工程化-环境准备

13:07

Day03-05. 前端工程化-Vue项目

13:27

Day03-06. 前端工程化-Vue项目开发流程

11:42



Day03-07. Element-快速入门

12:49

Day03-08. Element-组件-Table表格

05:54

Day03-09. Element-组件-Pagination分页

08:31

Day03-10. Element-组件-Dialog对话框

05:29

Day03-11. Element-组件-Form表单

10:53

Day03-12. Element-案例-基本页面布局

15:16

Day03-13. Element-案例-页面组件实现

09:57

Day03-14. Element-案例-axios异步加载数据

09:24



Day03-15. vue路由12:59

Day03-16. 打包部署09:55



80min

## Day04-01. maven-课程介绍11:28

学习完前端Web开发技术后，我们即将开始学习后端Web开发技术。做为一名Java开发工程师，**后端Web开发技术是我们学习的重点**。

后端Web开发技术的学习，我们会先学习Java项目的构建工具：Maven

### 1.2 初识Maven

#### 1.2.1 什么是Maven

Maven是Apache旗下的一个开源项目，是一款用于管理和构建java项目的工具。

#### 1.2.2 Maven的作用

使用Maven能够做什么呢？1、依赖管理，2、统一项目结构，3、项目构建

依赖管理：

方便快捷的管理项目依赖的资源(jar包)，避免版本冲突问题。

若没有通过maven进行大型项目的依赖管理，我们在开发项目时，需要引入大量的jar包。那么此时，jar包和jar包之间很多时候是需要版本匹配的，如果版本不匹配，此时很容易出现版本冲突问题。

当使用maven进行项目依赖(jar包)管理，则很方便的可以解决这个问题。 我们只需要在maven项目的pom.xml文件中，添加一段如下图所示的配置即可实现。

统一项目结构 : 

提供标准、统一的项目结构。在项目开发中，当你使用不同的开发工具 (如：Eclipse、Idea)，创建项目工程时：若我们创建的是一个maven工程，是可以帮我们自动生成统一、标准的项目目录结构：

目录说明： 

- src/main/java: java源代码目录
- src/main/resources:  配置文件信息
- src/test/java: 测试代码
- src/test/resources: 测试配置文件信息

项目构建 : 

maven提供了标准的、跨平台(Linux、Windows、MacOS) 的自动化项目构建方式

如上图所示我们开发了一套系统，代码需要进行编译、测试、打包、发布，这些操作如果需要反复进行就显得特别麻烦，而Maven提供了一套简单的命令来完成项目构建。

综上所述，可以得到一个结论：Maven是一款管理和构建java项目的工具



Day04-02. maven-概述-介绍&安装16:18

### 2.2 Maven模型

* 项目对象模型 (Project Object Model)
* 依赖管理模型(Dependency)
* 构建生命周期/阶段(Build lifecycle & phases)



1）构建生命周期/阶段(Build lifecycle & phases)

以上图中紫色框起来的部分，就是用来完成标准化构建流程 。当我们需要编译，Maven提供了一个编译插件供我们使用；当我们需要打包，Maven就提供了一个打包插件供我们使用等。 

2）项目对象模型 (Project Object Model)

以上图中紫色框起来的部分属于项目对象模型，就是将我们自己的项目抽象成一个对象模型，有自己专属的坐标，如下图所示是一个Maven项目：

//坐标，就是资源(jar包)的唯一标识，通过坐标可以定位到所需资源(jar包)位置

3）依赖管理模型(Dependency)

以上图中紫色框起来的部分属于依赖管理模型，是使用坐标来描述当前项目依赖哪些第三方jar包

之前我们项目中需要jar包时，直接就把jar包复制到项目下的lib目录，而现在书写在pom.xml文件中的坐标又是怎么能找到所要的jar包文件的呢？

> 答案：Maven仓库

### 2.3 Maven仓库 

仓库：用于存储资源，管理各种jar包。仓库的本质就是一个目录(文件夹)，这个目录被用来存储开发中所有依赖(就是jar包)和插件

Maven仓库分为：

- 本地仓库：自己计算机上的一个目录(用来存储jar包)
- 中央仓库：由Maven团队维护的全球唯一的。仓库地址：https://repo1.maven.org/maven2/
- 远程仓库(私服)：一般由公司团队搭建的私有仓库

当项目中使用坐标引入对应依赖jar包后，首先会查找本地仓库中是否有对应的jar包。如果有，则在项目直接引用；如果没有，则去中央仓库中下载对应的jar包到本地仓库。

如果还可以搭建远程仓库(私服)，将来jar包的查找顺序则变为： 本地仓库 --> 远程仓库--> 中央仓库

### 2.4 Maven安装

认识了Maven后，我们就要开始使用Maven了，那么首先我们要进行Maven的下载与安装。

#### 2.4.1 下载

下载地址：https://maven.apache.org/download.cgi。在提供的资料中，已经提供了下载好的安装包。如下：

#### 2.4.2 安装步骤

Maven安装配置步骤：1、解压安装，2、配置仓库，3、配置Maven环境变量

1、解压 apache-maven-3.6.1-bin.zip（解压即安装）。

建议解压到没有中文、特殊字符的路径下。如课程中解压到 `E:\develop` 下。解压缩后的目录结构如下：

* bin目录 ： 存放的是可执行命令。（mvn 命令重点关注）
* conf目录 ：存放Maven的配置文件。（settings.xml配置文件后期需要修改）
* lib目录 ：存放Maven依赖的jar包。（Maven也是使用java开发的，所以它也依赖其他的jar包）

2、配置本地仓库

2.1、在自己计算机上新一个目录（本地仓库，用来存储jar包）

2.2、进入到conf目录下修改settings.xml配置文件 

1). 使用超级记事本软件，打开settings.xml文件，定位到53行

2). 复制<localRepository>标签，粘贴到注释的外面（55行）

3). 复制之前新建的用来存储jar包的路径，替换掉<localRepository>标签体内容

3、配置阿里云私服

由于中央仓库在国外，所以下载jar包速度可能比较慢，而阿里公司提供了一个远程仓库，里面基本也都有开源项目的jar包。

进入到conf目录下修改settings.xml配置文件：

1). 使用超级记事本软件，打开settings.xml文件，定位到160行左右

2). 在<mirrors>标签下为其添加子标签<mirror>，内容如下：

注意配置的位置，在<mirrors> ... </mirrors> 中间添加配置。如下图所示：

注:  只可配置一个<mirror>(另一个要注释！) ，不然两个可能发生冲突，导致jar包无法下载！！！

4、配置环境变量

Maven环境变量的配置类似于JDK环境变量配置一样

1). 在系统变量处新建一个变量MAVEN_HOME

- MAVEN_HOME环境变量的值，设置为maven的解压安装目录

2). 在Path中进行配置

- PATH环境变量的值，设置为：%MAVEN_HOME%\bin

3). 打开DOS命令提示符进行验证，出现如图所示表示安装成功。mvn -v





Day04-03. maven-idea集成-配置及创建maven项目13:57

### 3.1 配置Maven环境 

#### 3.1.1 当前工程设置 

1、选择 IDEA中 File  =>  Settings  =>  Build,Execution,Deployment  =>  Build Tools  =>  Maven

2、设置IDEA使用本地安装的Maven，并修改配置文件及本地仓库路径

* Maven home path ：指定当前Maven的安装目录

* User settings file ：指定当前Maven的settings.xml配置文件的存放路径

* Local repository ：指定Maven的本地仓库的路径 (如果指定了settings.xml, 这个目录会自动读取出来, 可以不用手动指定)

3、配置工程的编译版本为11。Maven默认使用的编译版本为5（版本过低）

上述配置的maven环境，只是针对于当前工程的，如果我们再创建一个project，又恢复成默认的配置了。 要解决这个问题， 我们就需要配置全局的maven环境。

#### 3.1.2 全局设置 

1、进入到IDEA欢迎页面，选择 IDEA中 File  =>  close project

2、打开 All settings , 选择 Build,Execution,Deployment  =>  Build Tools  =>  Maven

3、配置工程的编译版本为11

这里所设置的maven的环境信息，并未指定任何一个project，此时设置的信息就属于全局配置信息。 以后，我们再创建project，默认就是使用我们全局配置的信息。

maven项目的目录结构:

maven-project01
	|---  src  (源代码目录和测试代码目录)
		    |---  main (源代码目录)
			           |--- java (源代码java文件目录)
			           |--- resources (源代码配置文件目录)
		    |---  test (测试代码目录)
			           |--- java (测试代码java目录)
			           |--- resources (测试代码配置文件目录)
	|--- target (编译、打包生成文件存放目录)

#### 3.2.2 POM配置详解

POM (Project Object Model) ：指的是项目对象模型，用来描述当前的maven项目。

pom文件详解：

<project> ：pom文件的根标签，表示当前maven项目

<modelVersion> ：声明项目描述遵循哪一个POM模型版本。虽然模型本身的版本很少改变，但它仍然是必不可少的。目前POM模型版本是4.0.0

坐标 ：<groupId>、<artifactId>、<version>。定位项目在本地仓库中的位置，由以上三个标签组成一个坐标

<packaging> ：maven项目的打包方式，通常设置为jar或war（默认值：jar）

#### 3.2.3 Maven坐标详解

什么是坐标？

Maven中的坐标是资源的唯一标识 , 通过该坐标可以唯一定位资源位置。使用坐标来定义项目或引入项目中需要的依赖

Maven坐标主要组成：

groupId：定义当前Maven项目隶属组织名称（通常是域名反写，例如：com.itheima）

artifactId：定义当前Maven项目名称（通常是模块名称，例如 order-service、goods-service）

version：定义当前项目版本号

注意：上面所说的资源可以是插件、依赖、当前项目。我们的项目如果被其他的项目依赖时，也是需要坐标来引入的。



Day04-04. maven-idea集成-导入maven项目03:10

方式1：使用Maven面板，快速导入项目。打开IDEA，选择右侧Maven面板，点击 + 号，选中对应项目的pom.xml文件，双击即可

方式2：使用idea导入模块项目。File  =>  Project Structure  =>  Modules  =>  +  =>  Import Module



Day04-05. maven-依赖管理-依赖配置07:41 

依赖：指当前项目运行所需要的jar包。一个项目中可以引入多个依赖：

例如：在当前工程中，我们需要用到logback来记录日志，此时就可以在maven工程的pom.xml文件中，引入logback的依赖。具体步骤如下：

1、在pom.xml中编写<dependencies>标签，2、在<dependencies>标签中使用<dependency>引入坐标

3、定义坐标的 groupId、artifactId、version，4、点击刷新按钮，引入最新加入的坐标

注意事项：

1、如果引入的依赖，在本地仓库中不存在，将会连接远程仓库 / 中央仓库，然后下载依赖（这个过程会比较耗时，耐心等待）

2、如果不知道依赖的坐标信息，可以到mvn的中央仓库（https://mvnrepository.com/）中搜索

添加依赖的几种方式：

1、利用中央仓库搜索的依赖坐标， 2、利用IDEA工具搜索依赖，3、熟练上手maven后，快速导入依赖





Day04-06. maven-依赖管理-依赖传递08:34

#### 4.2.1 依赖具有传递性

早期我们没有使用maven时，向项目中添加依赖的jar包，需要把所有的jar包都复制到项目工程下。如下图所示，需要logback-classic时，由于logback-classic又依赖了logback-core和slf4j，所以必须把这3个jar包全部复制到项目工程下

我们现在使用了maven，当项目中需要使用logback-classic时，只需要在pom.xml配置文件中，添加logback-classic的依赖坐标即可。

在pom.xml文件中只添加了logback-classic依赖，但由于maven的依赖具有传递性，所以会自动把所依赖的其他jar包也一起导入。

依赖传递可以分为：

1、直接依赖：在当前项目中通过依赖配置建立的依赖关系

2、间接依赖：被依赖的资源如果依赖其他资源，当前项目间接依赖其他资源

#### 4.2.2 排除依赖

问题：之前我们讲了依赖具有传递性。那么A依赖B，B依赖C，如果A不想将C依赖进来，是否可以做到？ 

答案：在maven项目中，我们可以通过排除依赖来实现。

什么是排除依赖？排除依赖：指主动断开依赖的资源。（被排除的资源无需指定版本）





Day04-07. maven-依赖管理-依赖范围08:10

在项目中导入依赖的jar包后，默认情况下，可以在任何地方使用。

如果希望限制依赖的使用范围，可以通过<scope>标签设置其作用范围。

作用范围：

1. 主程序范围有效（main文件夹范围内）

2. 测试程序范围有效（test文件夹范围内）

3. 是否参与打包运行（package指令范围内）

| **scope**值     | **主程序** | **测试程序** | **打包（运行）** |  **范例**   |
| --------------- | ---------- | ------------ | ---------------- | :---------: |
| compile（默认） | Y          | Y            | Y                |    log4j    |
| test            | -          | Y            | -                |    junit    |
| provided        | Y          | Y            | -                | servlet-api |
| runtime         | -          | Y            | Y                |  jdbc驱动   |



Day04-08. maven-依赖管理-生命周期12:51

#### 4.4.1 介绍

Maven的生命周期就是为了对所有的构建过程进行抽象和统一。 描述了一次项目构建，经历哪些阶段。

在Maven出现之前，项目构建的生命周期就已经存在，软件开发人员每天都在对项目进行清理，编译，测试及部署。虽然大家都在不停地做构建工作，但公司和公司间、项目和项目间，往往使用不同的方式做类似的工作。

Maven从大量项目和构建工具中学习和反思，然后总结了一套高度完美的，易扩展的项目构建生命周期。这个生命周期包含了项目的清理，初始化，编译，测试，打包，集成测试，验证，部署和站点生成等几乎所有构建步骤。

Maven对项目构建的生命周期划分为3套（相互独立）：

- clean：清理工作。

- default：核心工作。如：编译、测试、打包、安装、部署等。

- site：生成报告、发布站点等。

三套生命周期又包含哪些具体的阶段呢, 我们来看下面这幅图：

我们看到这三套生命周期，里面有很多很多的阶段，这么多生命周期阶段，其实我们常用的并不多，主要关注以下几个：

clean：移除上一次构建生成的文件

compile：编译项目源代码

test：使用合适的单元测试框架运行测试(junit)

package：将编译后的文件打包，如：jar、war等

install：安装项目到本地仓库

Maven的生命周期是抽象的，这意味着生命周期本身不做任何实际工作。**在Maven的设计中，实际任务（如源代码编译）都交由插件来完成。**

IDEA工具为了方便程序员使用maven生命周期，在右侧的maven工具栏中，已给出快速访问通道

生命周期的顺序是：clean --> validate --> compile --> test --> package --> verify --> install --> site --> deploy 

我们需要关注的就是：clean -->  compile --> test --> package  --> install 

说明：在同一套生命周期中，我们在执行后面的生命周期时，前面的生命周期都会执行。

思考：当运行package生命周期时，clean、compile生命周期会不会运行？

clean不会运行，compile会运行。  因为compile与package属于同一套生命周期，而clean与package不属于同一套生命周期。

#### 4.4.2 执行

在日常开发中，当我们要执行指定的生命周期时，有两种执行方式：

1、在idea工具右侧的maven工具栏中，选择对应的生命周期，双击执行，2、在DOS命令行中，通过maven命令执行

**方式一：在idea中执行生命周期**，选择对应的生命周期，双击执行

**方式二：在命令行中执行生命周期**，进入到DOS命令行



25min

## Day04-09. Web入门-课程介绍07:17

下面我们将进入SpringBoot基础阶段的学习。

在没有正式的学习SpringBoot之前，我们要先来了解下什么是Spring。

我们可以打开Spring的官网(https://spring.io)，去看一下Spring的简介：Spring makes Java simple。

Spring的官方提供很多开源的项目，我们可以点击上面的projects，看到spring家族旗下的项目，按照流行程度排序为：

Spring发展到今天已经形成了一种开发生态圈，Spring提供了若干个子项目，每个项目用于完成特定的功能。而我们在项目开发时，一般会偏向于选择这一套spring家族的技术，来解决对应领域的问题，那我们称这一套技术为**spring全家桶**。

而Spring家族旗下这么多的技术，最基础、最核心的是 SpringFramework。其他的spring家族的技术，都是基于SpringFramework的，SpringFramework中提供很多实用功能，如：依赖注入、事务管理、web开发支持、数据访问、消息服务等等。

而如果我们在项目中，直接基于SpringFramework进行开发，存在两个问题：配置繁琐、入门难度大。 

所以基于此呢，spring官方推荐我们从另外一个项目开始学习，那就是目前最火爆的SpringBoot。 

通过springboot就可以快速的帮我们构建应用程序，所以springboot呢，最大的特点有两个 ：简化配置、快速开发

接下来，我们就直接通过一个SpringBoot的web入门程序，让大家快速感受一下，基于SpringBoot进行Web开发的便捷性。



## Day04-10. Web入门-SpringBootWeb-快速入门16:25







45min

Day04-11. Web入门-HTTP协议-概述09:39

Day04-12. Web入门-HTTP协议-请求协议10:01

Day04-13. Web入门-HTTP协议-响应协议16:12

Day04-14. Web入门-HTTP协议-协议解析08:52



30min

Day04-15. Web入门-Tomcat-介绍08:30

Day04-16. Web入门-Tomcat-基本使用12:17

Day04-17. Web入门-Tomcat-入门程序解析(内嵌tomcat)09:33



95min

## Day05-01. 请求响应-概述08:51

Day05-02. 请求响应-请求-postman工具07:48

Day05-03. 请求响应-请求-简单参数&实体参数21:48

Day05-04. 请求响应-请求-数组集合参数06:41

Day05-05. 请求响应-请求-日期参数&json参数09:05

Day05-06. 请求响应-请求-路径参数09:47

Day05-07. 请求响应-响应-@ResponseBody&统一响应结果15:44

Day05-08. 请求响应-响应-案例18:55



50min

## Day05-09. 分层解耦-三层架构14:29

Day05-10. 分层解耦-分层解耦(IOC-DI引入)07:53

Day05-11. 分层解耦-IOC&DI-入门07:25

Day05-12. 分层解耦-IOC&DI-IOC详解12:31

Day05-13. 分层解耦-IOC&DI-DI详解08:38



Day06-01. MySQL-课程介绍

12:35

Day06-02. MySQL-概述-安装配置

16:02

Day06-03. MySQL-概述-数据模型&SQL简介

14:13

Day06-04. MySQL-DDL-数据库操作

12:37

Day06-05. MySQL-DDL-图形化工具

11:40

Day06-06. MySQL-DDL-表结构操作-创建

20:04

Day06-07. MySQL-DDL-表结构操作-数据类型

15:19

Day06-08. MySQL-DDL-表结构操作-创建-案例

18:49

Day06-09. MySQL-DDL-表结构操作-查询&修改&删除

13:46

Day06-10. MySQL-DML-添加数据insert

12:22

Day06-11. MySQL-DML-修改数据update

05:53

Day06-12. MySQL-DML-删除数据delete

04:43

Day07-01. MySQL-DQL-基本查询

16:58

Day07-02. MySQL-DQL-条件查询

15:03

Day07-03. MySQL-DQL-聚合函数08:19

Day07-04. MySQL-DQL-分组查询07:55

Day07-05. MySQL-DQL-排序查询

05:50

Day07-06. MySQL-DQL-分页查询

07:48

Day07-07. MySQL-DQL-案例

24:00



Day07-08. MySQL-多表设计-一对多10:01

Day07-09. MySQL-多表设计-一对多-外键10:10

Day07-10. MySQL-多表设计-一对一&多对多11:57

Day07-11. MySQL-多表设计-案例-关系分析

14:44

Day07-12. MySQL-多表设计-案例-表结构

25:44



Day08-01. MySQL-多表查询-概述

10:50

Day08-02. MySQL-多表查询-内连接

08:00

Day08-03. MySQL-多表查询-外连接

07:41

Day08-04. MySQL-多表查询-子查询(标量、列)11:29

Day08-05. MySQL-多表查询-子查询(行、表)08:26

Day08-06. MySQL-多表查询-案例1

14:57

Day08-07. MySQL-多表查询-案例2

13:56



Day08-08. MySQL-事务-介绍与操作12:49

Day08-09. MySQL-事务-四大特性03:43



Day08-10. MySQL-索引-介绍16:43

Day08-11. MySQL-索引-结构08:30

Day08-12. MySQL-索引-操作语法06:31



Day08-13. Mybatis-入门-课程介绍

04:32

Day08-14. Mybatis-入门-快速入门程序

25:26

Day08-15. Mybatis-入门-配置SQL提示

05:17

Day08-16. Mybatis-入门-JDBC12:05

Day08-17. Mybatis-入门-数据库连接池11:27

Day08-18. Mybatis-入门-lombok工具包介绍10:26

Day09-01. Mybatis-基础操作-环境准备

10:52

Day09-02. Mybatis-基础操作-删除

09:58

Day09-03. Mybatis-基础操作-删除(预编译SQL)

23:03

Day09-04. Mybatis-基础操作-新增

10:53

Day09-05. Mybatis-基础操作-新增(主键返回)

05:25

Day09-06. Mybatis-基础操作-更新

08:19

Day09-07. Mybatis-基础操作-查询(根据ID查询)

13:48

Day09-08. Mybatis-基础操作-查询(条件查询)

16:17



Day09-09. Mybatis-XML映射文件19:31



Day09-10. Mybatis-动态SQL-if13:03

Day09-11. Mybatis-动态SQL-if-案例

16:42

Day09-12. Mybatis-动态SQL-foreach

08:46

Day09-13. Mybatis-动态SQL-sql&include

06:42



Day10-01. 案例-准备工作

26:07

Day10-02. 案例-部门管理-查询

17:08

Day10-03. 案例-部门管理-前后端联调

07:03

Day10-04. 案例-部门管理-删除

10:29

Day10-05. 案例-部门管理-新增

13:35



Day10-06. 案例-员工管理-分页查询-分析

16:31

Day10-07. 案例-员工管理-分页查询-实现

13:11

Day10-08. 案例-员工管理-分页查询-PageHelper插件13:49

Day10-09. 案例-员工管理-分页条件查询

21:25

Day10-10. 案例-员工管理-删除员工

12:01

Day11-01. 案例-员工管理-新增员工

14:35



## Day11-02. 案例-文件上传-简介

21:56

Day11-03. 案例-文件上传-本地存储

24:25

Day11-04. 案例-文件上传-阿里云OSS-准备12:11

Day11-05. 案例-文件上传-阿里云OSS-入门14:31

Day11-06. 案例-文件上传-阿里云OSS-集成16:29



Day11-07. 案例-修改员工-查询回显

07:54

Day11-08. 案例-修改员工-修改员工

15:16



Day11-09. 案例-配置文件-参数配置化

12:44

Day11-10. 案例-配置文件-yml配置文件18:47

Day11-11. 案例-配置文件-@ConfigurationProperties13:43



Day12-01. 基础登录功能18:18

Day12-02. 登录校验-概述09:23



Day12-03. 登录认证-登录校验-会话技术08:20

Day12-04. 登录认证-登录校验-会话跟踪方案一15:26

Day12-05. 登录认证-登录校验-会话跟踪方案二、三14:32



Day12-06. 登录校验-JWT令牌-介绍08:08

Day12-07. 登录校验-JWT令牌-生成和校验16:28

Day12-08. 登录校验-JWT令牌-登录后下发令牌13:27



Day12-09. 登录校验-Filter-入门

16:26

Day12-10. 登录校验-Filter-详解(执行流程-拦截路径)

09:54

Day12-11. 登录校验-Filter-详解(过滤器链)

08:43

Day12-12. 登录校验-Filter-登录校验过滤器

23:11



Day12-13. 登录校验-Interceptor-入门12:11

Day12-14. 登录校验-Interceptor-详解10:41

Day12-15. 登录校验-Interceptor-登录校验拦截器07:00



Day12-16. 异常处理

13:04



Day13-01. 事务管理-事务回顾-spring事务管理16:07

Day13-02. 事务管理-事务进阶-rollbackFor属性06:52

Day13-03. 事务管理-事务进阶-propagation属性16:16



Day13-04. AOP基础-快速入门

21:47

Day13-05. AOP基础-核心概念

09:55

Day13-06. AOP进阶-通知类型

21:03

Day13-07. AOP进阶-通知顺序

08:09

Day13-08. AOP进阶-切入点表达式-execution

23:24

Day13-09. AOP进阶-切入点表达式-@annotation

05:41

Day13-10. AOP进阶-连接点

10:25

Day13-11. AOP案例-记录操作日志

28:10



Day14-01. SpringBoot-配置优先级14:26

Day14-02. bean的管理-bean的获取07:55

Day14-03. bean的管理-bean的作用域07:56

Day14-04. bean的管理-第三方bean14:39



Day14-05. SpringBoot原理-起步依赖

06:29

Day14-06. SpringBoot原理-自动配置-概述

06:13

Day14-07. SpringBoot原理-自动配置-方案

17:30

Day14-08. SpringBoot原理-自动配置-原理分析-源码跟踪

16:27

Day14-09. SpringBoot原理-自动配置-原理分析-@Conditional

19:38

Day14-10. SpringBoot原理-自动配置-案例(自定义starter分析)

09:47

Day14-11. SpringBoot原理-自动配置-案例(自定义starter实现)

21:54

Day14-12. Web后端开发-总结

05:35



Day15-01. maven高级-分模块设计与开发

20:48

Day15-02. maven高级-继承与聚合-继承关系实现

21:42

Day15-03. maven高级-继承与聚合-版本锁定

17:29

Day15-04. maven高级-继承与聚合-聚合实现

11:09

Day15-05. maven高级-私服

26:26



Web开发-完结

05:10