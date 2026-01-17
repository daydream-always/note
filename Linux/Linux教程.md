# Linux 教程

------

![linux](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/linux.jpg)

Linux 是一种自由和开放源码的类 UNIX 操作系统。

Linux 英文解释为 **Linux is not Unix**。

Linux 是在 1991 由林纳斯·托瓦兹在赫尔辛基大学上学时创立的，主要受到 Minix 和 Unix 思想的启发。

本教程，我们将为大家介绍如何使用 Linux。

Linux 其实很容易学，相信你们能很快学会。

[现在开始学习 Linux ！](https://www.runoob.com/linux/Linux-intro.html)

------

## 谁适合阅读？

本教程针对的是Linux服务器方面的知识，适合从事运维或后端开发的人员阅读。

------

## 需要具备的知识？

如果你熟悉操作系统方面的知识，相信你会很快学会 Linux。

本教程将于 Linux 的发行版本 Centos 为例来为大家介绍 Linux 系统的应用。

------

## Linux 是开源的

Linux 遵循 GNU 通用公共许可证（GPL），任何个人和机构都可以自由地使用 Linux 的所有底层源代码，也可以自由地修改和再发布。

由于 Linux 是自由软件，任何人都可以创建一个符合自己需求的 Linux 发行版。

目前主流的 Linux 版本有：

- Debian（及其派生版本Ubuntu、Linux Mint）
- Fedora（及其相关版本Red Hat Enterprise Linux、CentOS）
- openSUSE
- ...

# Linux 简介

Linux 内核最初只是由芬兰人林纳斯·托瓦兹（Linus Torvalds）在赫尔辛基大学上学时出于个人爱好而编写的。

Linux 是一套免费使用和自由传播的类 Unix 操作系统，是一个基于 POSIX 和 UNIX 的多用户、多任务、支持多线程和多 CPU 的操作系统。

Linux 能运行主要的 UNIX 工具软件、应用程序和网络协议。它支持 32 位和 64 位硬件。Linux 继承了 Unix 以网络为核心的设计思想，是一个性能稳定的多用户网络操作系统。

------

## Linux 的发行版

Linux 的发行版说简单点就是将 Linux 内核与应用软件做一个打包。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1511849829609658.jpg)

目前市面上较知名的发行版有：Ubuntu、RedHat、CentOS、Debian、Fedora、SuSE、OpenSUSE、Arch Linux、SolusOS 等。

![img](https://www.runoob.com/wp-content/uploads/2014/06/wKioL1bvVPWAu7hqAAEyirVUn3c446.jpg-wh_651x-s_3197843091.jpg)

------

## Linux 应用领域

今天各种场合都有使用各种 Linux 发行版，从嵌入式设备到超级计算机，并且在服务器领域确定了地位，通常服务器使用 LAMP（Linux + Apache + MySQL + PHP）或 LNMP（Linux + Nginx+ MySQL + PHP）组合。

目前 Linux 不仅在家庭与企业中使用，并且在政府中也很受欢迎。

- 巴西联邦政府由于支持 Linux 而世界闻名。
- 有新闻报道俄罗斯军队自己制造的 Linux 发布版的，做为 G.H.ost 项目已经取得成果。
- 印度的 Kerala 联邦计划在向全联邦的高中推广使用 Linux。
- 中华人民共和国为取得技术独立，在龙芯处理器中排他性地使用 Linux。
- 在西班牙的一些地区开发了自己的 Linux 发布版，并且在政府与教育领域广泛使用，如 Extremadura 地区的 gnuLinEx 和 Andalusia 地区的 Guadalinex。
- 葡萄牙开发了自己的 Linux 发行版 Caixa Mágica，并将其应用在 Magalhães 教育笔记本电脑及政府的 e-escola 教育计划中。
- 法国和德国同样开始逐步采用 Linux。

------

## Linux vs Windows

目前国内 Linux 更多的是应用于服务器上，而桌面操作系统更多使用的是 Windows。主要区别如下

| 比较     | Windows                                                      | Linux                                                        |
| :------- | :----------------------------------------------------------- | :----------------------------------------------------------- |
| 界面     | 界面统一，外壳程序固定所有 Windows 程序菜单几乎一致，快捷键也几乎相同 | 图形界面风格依发布版不同而不同，可能互不兼容。GNU/Linux 的终端机是从 UNIX 传承下来，基本命令和操作方法也几乎一致。 |
| 驱动程序 | 驱动程序丰富，版本更新频繁。默认安装程序里面一般包含有该版本发布时流行的硬件驱动程序，之后所出的新硬件驱动依赖于硬件厂商提供。对于一些老硬件，如果没有了原配的驱动有时很难支持。另外，有时硬件厂商未提供所需版本的 Windows 下的驱动，也会比较头痛。 | 由志愿者开发，由 Linux 核心开发小组发布，很多硬件厂商基于版权考虑并未提供驱动程序，尽管多数无需手动安装，但是涉及安装则相对复杂，使得新用户面对驱动程序问题（是否存在和安装方法）会一筹莫展。但是在开源开发模式下，许多老硬件尽管在Windows下很难支持的也容易找到驱动。HP、Intel、AMD 等硬件厂商逐步不同程度支持开源驱动，问题正在得到缓解。 |
| 使用     | 使用比较简单，容易入门。图形化界面对没有计算机背景知识的用户使用十分有利。 | 图形界面使用简单，容易入门。文字界面，需要学习才能掌握。     |
| 学习     | 系统构造复杂、变化频繁，且知识、技能淘汰快，深入学习困难。   | 系统构造简单、稳定，且知识、技能传承性好，深入学习相对容易。 |
| 软件     | 每一种特定功能可能都需要商业软件的支持，需要购买相应的授权。 | 大部分软件都可以自由获取，同样功能的软件选择较少。           |

# Linux 安装

## VMware 安装 Centos7 超详细过程

### *分类* [编程技术](https://www.runoob.com/w3cnote_genre/code)

![img](https://www.runoob.com/wp-content/uploads/2019/08/1564741127-2913-6852280-02c6e7b72311b307.png)

### 1.软硬件准备

软件：推荐使用 VMware，我用的是 VMware 12

镜像：CentOS6 ,如果没有镜像可以在阿里云下载 https://mirrors.aliyun.com/centos/

![img](https://www.runoob.com/wp-content/uploads/2019/08/1564741127-6742-6852280-6016d328a294afaa.png)

硬件：因为是在宿主机上运行虚拟化软件安装centos，所以对宿主机的配置有一定的要求。最起码I5CPU双核、硬盘500G、内存4G以上。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741127-8621-6852280-65cf11e662ddb6fa.png)

### 2.虚拟机准备

1.打开VMware选择新建虚拟机

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741127-8160-6852280-f77b143952798416.png)

2.典型安装与自定义安装

典型安装：VMware会将主流的配置应用在虚拟机的操作系统上，对于新手来很友好。

自定义安装：自定义安装可以针对性的把一些资源加强，把不需要的资源移除。避免资源的浪费。

这里我选择自定义安装。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741127-7673-6852280-15cf157374d2efa3.png)

3.虚拟机兼容性选择

这里要注意兼容性，如果是VMware12创建的虚拟机复制到VM11、10或者更低的版本会出现一不兼容的现象。如果是用VMware10创建的虚拟机在VMware12中打开则不会出现兼容性问题。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741127-8184-6852280-a3a071809202f96c.png)

4.选择稍后安装操作系统

![img](https://www.runoob.com/wp-content/uploads/2019/08/1564741128-9117-6852280-dedd2c755b23a861.png)

5.操作系统的选择

这里选择之后安装的操作系统，正确的选择会让vm tools更好的兼容。这里选择linux下的CentOS

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741128-7947-6852280-737966b7f1b4d699.png)

6.虚拟机位置与命名

虚拟机名称就是一个名字，在虚拟机多的时候方便自己找到。

VMware的默认位置是在C盘下，我这里改成F盘。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741128-6505-6852280-e8218062ff2ad62c.png)

7.处理器与内存的分配

处理器分配要根据自己的实际需求来分配。在使用过程中CPU不够的话是可以再增加的。这次只做安装CentOS演示，所以处理器与核心都选1.

![img](https://www.runoob.com/wp-content/uploads/2019/08/1564741128-4035-6852280-3fbd3ba6ef3db5c3.png)

内存也是要根据实际的需求分配。我的宿主机内存是8G所以我给虚拟机分配2G内存。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741129-7800-6852280-ee1ff4143a1f2904.png)

8.网络连接类型的选择，网络连接类型一共有桥接、NAT、仅主机和不联网四种。

桥接：选择桥接模式的话虚拟机和宿主机在网络上就是平级的关系，相当于连接在同一交换机上。

NAT：NAT模式就是虚拟机要联网得先通过宿主机才能和外面进行通信。

仅主机：虚拟机与宿主机直接连起来

桥接与NAT模式访问互联网过程，如下图所示

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741129-9031-6852280-d07dc33a8be765c2.png)

**桥接与NAT区别**

这里选择桥接模式

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741129-1671-6852280-763c60ffdfbbe98f.png)

9.其余两项按虚拟机默认选项即可

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741129-1215-6852280-b7ffd2ce4e5dda00.png)

10.磁盘容量

磁盘容量暂时分配100G即可后期可以随时增加，不要勾选立即分配所有磁盘，否则虚拟机会将100G直接分配给CentOS，会导致宿主机所剩硬盘容量减少。 勾选将虚拟磁盘拆分成多个文件，这样可以使虚拟机方便用储存设备拷贝复制。

![img](https://www.runoob.com/wp-content/uploads/2019/08/1564741129-8362-6852280-b482f1c7221e96e8.png)

11.磁盘名称，默认即可

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741130-7604-6852280-954605e222159a8c.png)

12.取消不需要的硬件

点击自定义硬件

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741131-7575-6852280-748f2d5827858c46.png)

选择声卡、打印机等不需要的硬件然后移除。

![img](https://www.runoob.com/wp-content/uploads/2019/08/1564741130-7755-6852280-0396726c05e65267.png)

13.点击完成，已经创建好虚拟机。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741131-7639-6852280-8f44bd8c808496a6.png)

### 3.安装CentOS

1.连接光盘

右击刚创建的虚拟机，选择设置

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741130-4879-6852280-60a45c6a565cac0a.png)

先选择CD/DVD，再选择使用ISO映像文件，最后选择浏览找到下载好的镜像文件。启动时连接一定要勾选上后确定。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741131-4241-6852280-954e6acf6d2fbcca.png)

2.开启虚拟机

![img](https://www.runoob.com/wp-content/uploads/2019/08/1564741132-6485-6852280-6d6d494624515221.png)

3.安装操作系统

开启虚拟机后会出现以下界面:

- Install CentOS 7 安装CentOS 7
- Test this media & install CentOS 7 测试安装文件并安装CentOS 7
- Troubleshooting 修复故障

选择第一项，安装直接CentOS 7，回车，进入下面的界面

![img](https://www.runoob.com/wp-content/uploads/2019/08/1564741132-3806-6852280-989a4d1bc37e8653.png)

选择安装过程中使用的语言，这里选择英文、键盘选择美式键盘。点击Continue

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741132-5326-6852280-d050f186e0bfe8f9.png)

首先设置时间

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741133-3994-6852280-f9a4c0d843e33e67.png)

时区选择上海，查看时间是否正确。然后点击Done

![img](https://www.runoob.com/wp-content/uploads/2019/08/1564741132-4825-6852280-2de5dc94e57889cf.png)

选择需要安装的软件

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741133-5208-6852280-8c610fe61d6453e2.png)

选择 Server with Gui，然后点击Done

![img](https://www.runoob.com/wp-content/uploads/2019/08/1564741133-6207-6852280-9cf6c1bfc94af8aa.png)

选择安装位置，在这里可以进行磁盘划分。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741134-1468-6852280-e191eb949c3ade15.png)

选择i wil configure partitioning（我将会配置分区），然后点击done

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741134-6460-6852280-ba3981d9d0abc6b2.png)

如下图所示，点击加号，选择/boot，给boot分区分200M。最后点击Add

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741135-8053-6852280-5ccb5f9263bdea37.png)

然后以同样的办法给其他三个区分配好空间后点击Done

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741136-6945-6852280-7499015d9886f456.png)

然后会弹出摘要信息，点击AcceptChanges(接受更改)

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741136-3293-6852280-15c1ad128b939d3a.png)

设置主机名与网卡信息

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741137-2746-6852280-1c3bc52d69c87514.png)

首先要打开网卡，然后查看是否能获取到IP地址(我这里是桥接)，再更改主机名后点击Done。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741137-7559-6852280-8e8a950ea172b810.png)

最后选择Begin Installation(开始安装)

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741137-4187-6852280-4fcc12834c856eaa.png)

设置root密码

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741138-1859-6852280-b040822db036b2e3.png)

设置root密码后点击Done

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741138-5137-6852280-f69ac0f0bc2f4ec6.png)

点击USER CREATION 创建管理员用户

![img](https://www.runoob.com/wp-content/uploads/2019/08/1564741139-1805-6852280-6772bfbb7b3f094a.png)

输入用户名密码后点击Done

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741139-9489-6852280-062dd21af5e9d11e.png)

等待系统安装完毕重启系统即可

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1564741140-4954-6852280-f9ad65ac39453b74.png)

# Linux 云服务器

# WSL 安装 Linux

# Linux 系统启动过程

# Linux 系统目录结构

# Linux 忘记密码解决方法

# Linux 远程登录 

# Linux 文件基本属性 

# Linux 文件与目录管理

# Linux 用户和用户组管理

# Linux 磁盘管理

# Linux vi/vim

# linux yum 命令

# Linux apt 命令

# Shell 教程



# Shell 变量

# Shell 传递参数

# Shell 数组

# Shell 运算符 

# Shell echo 命令 

# Shell printf 命令 

# Shell test 命令

# Shell 流程控制

# Shell 函数

# Shell 输入/输出重定向 

# Shell 文件包含

# Linux 参考手册

# Linux 命令大全

# Nginx 安装配置

# MySQL 安装配置

# Linux 测验