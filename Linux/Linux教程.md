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

**云服务器(Elastic Compute Service, ECS)**是一种简单高效、安全可靠、处理能力可弹性伸缩的计算服务。

云服务器管理方式比物理服务器更简单高效，我们无需提前购买昂贵的硬件，即可迅速创建或删除云服务器，云服务器费用一般在几十到几百不等，可以根据我们的需求配置。

目前市场上的云服务器很多，这里主要介绍以下几家：

- [阿里云](https://www.runoob.com/linux/linux-cloud-server.html#ali)：阿里云年度促销的服务器折扣很大，[ **直达链接** ](https://www.aliyun.com/minisite/goods?userCode=i5mn5r7m)。
- [腾讯云](https://www.runoob.com/linux/linux-cloud-server.html#tx)：腾讯云目前活动多一些，性价比也高，[ **直达链接** ](https://curl.qcloud.com/ceSTZrin)。
- [京东云](https://3.cn/1TSF9-L5)：京东云的服务器折扣很大，[ **直达链接** ](https://3.cn/1TSF9-L5)。
- [华为云](https://activity.huaweicloud.com/discount_area_v5/index.html?fromacct=25d108d4-60d1-4baf-b5b1-d6dcb1f9e6f5&utm_source=dGlhbnFpeGlu=&utm_medium=cps&utm_campaign=201905)：华为云的服务器折扣也很大，[ **直达链接** ](https://activity.huaweicloud.com/discount_area_v5/index.html?fromacct=25d108d4-60d1-4baf-b5b1-d6dcb1f9e6f5&utm_source=dGlhbnFpeGlu=&utm_medium=cps&utm_campaign=201905)。
- 更多云服务器参考： **https://www.jyshare.com/cloud-server/**

> **注意：**很多云服务器给新用户提供的优惠力度是最大，基本上都是 1～2 折，建议新注册的用户购买。

## 阿里云

阿里云新用户购买折扣比较大，云服务器2核2G 3M固定带宽原价 **1507.56/年**, **现低至 \**99元/年\**，另外可以按 \**99元\** 续费一年，也就是 \**198元\** 用两年点击下面图片查看详情。**

[![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/618-aliiiii.png)](https://www.aliyun.com/minisite/goods?userCode=i5mn5r7m)

------

## 腾讯云

腾讯云秒杀活动已开始，以下几款性价比非常高，有几款是需要抢购的，大家看好时间基本能拿到。

- 2核2G4M云服务器 新老同享 99元/年，续费同价。

每个时间点都有不同的配置跟价格，具体信息，可以点击下面的图片（**[https://url.cn/zpx9ruoW](https://cloud.tencent.com/act/cps/redirect?redirect=6094&cps_key=822991d9cc1eddb9c45d4c9d51e8cc65&from=console)**）。

[![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/txy-618888.png)](https://cloud.tencent.com/act/cps/redirect?redirect=6094&cps_key=822991d9cc1eddb9c45d4c9d51e8cc65&from=console)

------

## 腾讯云服务器使用

本章节以腾讯云服务器为例。

**1、首先点击下图购买（更多服务器的配置信息见下文）：**

[![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/ED28C34B-0BF0-4AA3-A95F-2B348B983CEC.jpeg)](https://cloud.tencent.com/act/cps/redirect?redirect=6094&cps_key=822991d9cc1eddb9c45d4c9d51e8cc65&from=console)

**2、登陆腾讯云控制台，查看已购买的服务器：**

![img](https://www.runoob.com/wp-content/uploads/2019/11/812CFA9E-41F6-4EA2-8044-9FBCAB9C0AAE.jpg)

**3、在使用腾讯云服务器前，我们需要先创建一个 SSH 密钥，点击左侧的 \**SSH 密钥\** （使用密钥登录比密码更安全）：**

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/018E95B9-756E-4B6C-A0A2-CED21B42F25A.jpg)

输入密钥名称，然后点击确定，就会自动生成一个密钥，密钥会自动下载到本地，请保存好下载的密钥，密钥文件名就是你输入的密钥名称。

**4、接着我们勾选已经创建的密钥，点击 \**绑定/解绑实例\** 按钮，弹窗中会出现我们的 ECS 服务器，将其绑定到这个密钥即可：**

![img](https://www.runoob.com/wp-content/uploads/2019/11/963AF776-FE8C-4340-A426-870D962BDC93.jpg)

**5、返回实例列表，点击实例右侧的 \**登录\** 按钮，弹窗中点击立即登录，这是会弹出一个新的浏览器窗口，我们选择密钥登录，密钥文件就是在第三个步骤创建的：**

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/A23D733A-DA1B-42C9-91E8-12FB84A68400.jpg)

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/7603BDAC-3103-4379-B0BE-8E669E069AF4.jpg)

![img](https://www.runoob.com/wp-content/uploads/2019/11/D1D8FA9C-4ECD-42A4-B24B-70520F854858.jpg)

当然你可以选择第三方客户端登录（如：SecureCRT），用户名为 ubuntu，其他系统估计略有不同，然后导入对应的 key 即可。

# WSL 安装 Linux

**WSL（Windows Subsystem for Linux）** 是微软为 Windows 用户提供的一个子系统，它允许你在 Windows 上原生运行 Linux（不是虚拟机，不是双系统），直接使用 Bash、apt、gcc、Python、Node.js 等 Linux 工具。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/1728405989image-1024x576-1.webp)

### WSL 的版本区别

| 特性             | WSL1                     | WSL2                            |
| :--------------- | :----------------------- | :------------------------------ |
| 内核架构         | 翻译系统调用（兼容层）   | 真正的 Linux 内核（轻量虚拟机） |
| 性能（文件访问） | Windows ↔ Linux 访问更快 | Linux ↔ Linux 内部访问更快      |
| 启动速度         | 更快                     | 略慢                            |
| Docker 支持      | 不支持                   | ✅ 完全支持                      |
| 系统资源占用     | 较少                     | 稍高                            |

推荐使用 **WSL2**，兼容性更强，功能更完整。

------

## 安装步骤（以 WSL2 为例）

### 前提条件

- Windows 10 2004（或更高版本） / Windows 11
- 启用虚拟化（BIOS 中 VT-x 或 AMD-V 开启）

### 方法一：一键安装（推荐）

```
wsl --install
```

该命令会自动：

- 启用 WSL 功能
- 安装 WSL2 内核
- 安装默认的 Ubuntu
- 设置为 WSL2

安装完后，重启一次系统即可。

### 方法二：手动安装（适合定制需求）

**1、启用 WSL 功能和虚拟机平台**

```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

**2、下载并安装 Linux 内核更新包**

👉 下载地址：https://aka.ms/wsl2kernel

**3、设置默认 WSL 版本为 WSL2**

```
wsl --set-default-version 2
```

**4、从 Microsoft Store 安装 Linux 发行版（如 Ubuntu）**

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/Instalar-Ubuntu-18.04-desde-la-Microsoft-Store.png.webp)

也可命令行方式安装：

```
wsl --install -d Ubuntu
```

------

## 常用命令速查表

| 命令                         | 说明                     |
| :--------------------------- | :----------------------- |
| `wsl`                        | 启动默认 Linux           |
| `wsl --list --verbose`       | 查看已安装的发行版和版本 |
| `wsl --set-version Ubuntu 2` | 设置 Ubuntu 使用 WSL2    |
| `wsl --install -d Debian`    | 安装指定发行版           |
| `wsl --shutdown`             | 关闭所有 WSL 实例        |
| `wsl -e bash`                | 以 Bash 启动 Linux Shell |

------

## 日常使用指南

**如何访问 Windows 文件？**

在 WSL 中，Windows 文件挂载在 /mnt/c、/mnt/d 等目录：

```
cd /mnt/c/Users/你的用户名/Desktop
```

**如何访问 WSL 文件？**

在 Windows 中访问：

```
\\wsl$\Ubuntu\home\your_username
```

或者在资源管理器地址栏输入：**\\wsl$**

------

## 配套推荐工具

| 工具                 | 说明                             |
| :------------------- | :------------------------------- |
| Windows Terminal     | 多标签终端，支持彩色和自定义配置 |
| VS Code + Remote WSL | 在 VS Code 中直接编辑 Linux 文件 |
| oh-my-zsh / fish     | 美化终端，提升操作体验           |
| tmux / screen        | 多终端管理工具                   |

------

## 如何卸载或重置？

```
# 卸载某个 Linux 发行版
wsl --unregister Ubuntu

# 重置 WSL 所有数据（危险操作）
wsl --unregister <发行版名>
```

# Linux 系统启动过程

linux启动时我们会看到许多启动信息。

Linux系统的启动过程并不是大家想象中的那么复杂，其过程可以分为5个阶段：

- 内核的引导。
- 运行 init。
- 系统初始化。
- 建立终端 。
- 用户登录系统。

> init程序的类型：
>
> - **SysV:** init, CentOS 5之前, 配置文件： /etc/inittab。
> - **Upstart:** init,CentOS 6, 配置文件： /etc/inittab, /etc/init/*.conf。
> - **Systemd：** systemd, CentOS 7,配置文件： /usr/lib/systemd/system、 /etc/systemd/system。

------

## 内核引导

当计算机打开电源后，首先是BIOS开机自检，按照BIOS中设置的启动设备（通常是硬盘）来启动。

操作系统接管硬件以后，首先读入 /boot 目录下的内核文件。

![img](https://www.runoob.com/wp-content/uploads/2014/06/bg2013081702.png)

------

## 运行init

init 进程是系统所有进程的起点，你可以把它比拟成系统所有进程的老祖宗，没有这个进程，系统中任何进程都不会启动。

init 程序首先是需要读取配置文件 /etc/inittab。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/bg2013081703.png)



### 运行级别

许多程序需要开机启动。它们在Windows叫做"服务"（service），在Linux就叫做"守护进程"（daemon）。

init进程的一大任务，就是去运行这些开机启动的程序。

但是，不同的场合需要启动不同的程序，比如用作服务器时，需要启动Apache，用作桌面就不需要。

Linux允许为不同的场合，分配不同的开机启动程序，这就叫做"运行级别"（runlevel）。也就是说，启动时根据"运行级别"，确定要运行哪些程序。

![img](https://www.runoob.com/wp-content/uploads/2014/06/bg2013081704.png)

Linux系统有7个运行级别(runlevel)：

- 运行级别0：系统停机状态，系统默认运行级别不能设为0，否则不能正常启动
- 运行级别1：单用户工作状态，root权限，用于系统维护，禁止远程登录
- 运行级别2：多用户状态(没有NFS)
- 运行级别3：完全的多用户状态(有NFS)，登录后进入控制台命令行模式
- 运行级别4：系统未使用，保留
- 运行级别5：X11控制台，登录后进入图形GUI模式
- 运行级别6：系统正常关闭并重启，默认运行级别不能设为6，否则不能正常启动

------

## 系统初始化

在init的配置文件中有这么一行： si::sysinit:/etc/rc.d/rc.sysinit　它调用执行了/etc/rc.d/rc.sysinit，而rc.sysinit是一个bash shell的脚本，它主要是完成一些系统初始化的工作，rc.sysinit是每一个运行级别都要首先运行的重要脚本。

它主要完成的工作有：激活交换分区，检查磁盘，加载硬件模块以及其它一些需要优先执行任务。

```
l5:5:wait:/etc/rc.d/rc 5
```

这一行表示以5为参数运行/etc/rc.d/rc，/etc/rc.d/rc是一个Shell脚本，它接受5作为参数，去执行/etc/rc.d/rc5.d/目录下的所有的rc启动脚本，/etc/rc.d/rc5.d/目录中的这些启动脚本实际上都是一些连接文件，而不是真正的rc启动脚本，真正的rc启动脚本实际上都是放在/etc/rc.d/init.d/目录下。

而这些rc启动脚本有着类似的用法，它们一般能接受start、stop、restart、status等参数。

/etc/rc.d/rc5.d/中的rc启动脚本通常是K或S开头的连接文件，对于以 S 开头的启动脚本，将以start参数来运行。

而如果发现存在相应的脚本也存在K打头的连接，而且已经处于运行态了(以/var/lock/subsys/下的文件作为标志)，则将首先以stop为参数停止这些已经启动了的守护进程，然后再重新运行。

这样做是为了保证是当init改变运行级别时，所有相关的守护进程都将重启。

至于在每个运行级中将运行哪些守护进程，用户可以通过chkconfig或setup中的"System Services"来自行设定。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/bg2013081705.png)

------

## 建立终端

rc执行完毕后，返回init。这时基本系统环境已经设置好了，各种守护进程也已经启动了。

init接下来会打开6个终端，以便用户登录系统。在inittab中的以下6行就是定义了6个终端：

```
1:2345:respawn:/sbin/mingetty tty1
2:2345:respawn:/sbin/mingetty tty2
3:2345:respawn:/sbin/mingetty tty3
4:2345:respawn:/sbin/mingetty tty4
5:2345:respawn:/sbin/mingetty tty5
6:2345:respawn:/sbin/mingetty tty6
```

从上面可以看出在2、3、4、5的运行级别中都将以respawn方式运行mingetty程序，mingetty程序能打开终端、设置模式。

同时它会显示一个文本登录界面，这个界面就是我们经常看到的登录界面，在这个登录界面中会提示用户输入用户名，而用户输入的用户将作为参数传给login程序来验证用户的身份。

------

## 用户登录系统

一般来说，用户的登录方式有三种：

- （1）命令行登录
- （2）ssh登录
- （3）图形界面登录

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/bg2013081706.png)

对于运行级别为5的图形方式用户来说，他们的登录是通过一个图形化的登录界面。登录成功后可以直接进入 KDE、Gnome 等窗口管理器。

而本文主要讲的还是文本方式登录的情况：当我们看到mingetty的登录界面时，我们就可以输入用户名和密码来登录系统了。

Linux 的账号验证程序是 login，login 会接收 mingetty 传来的用户名作为用户名参数。

然后 login 会对用户名进行分析：如果用户名不是 root，且存在 /etc/nologin 文件，login 将输出 nologin 文件的内容，然后退出。

这通常用来系统维护时防止非root用户登录。只有/etc/securetty中登记了的终端才允许 root 用户登录，如果不存在这个文件，则 root 用户可以在任何终端上登录。

/etc/usertty文件用于对用户作出附加访问限制，如果不存在这个文件，则没有其他限制。

------

## 图形模式与文字模式的切换方式

Linux预设提供了六个命令窗口终端机让我们来登录。

默认我们登录的就是第一个窗口，也就是tty1，这个六个窗口分别为tty1,tty2 … tty6，你可以按下Ctrl + Alt + F1 ~ F6 来切换它们。

如果你安装了图形界面，默认情况下是进入图形界面的，此时你就可以按Ctrl + Alt + F1 ~ F6来进入其中一个命令窗口界面。

当你进入命令窗口界面后再返回图形界面只要按下Ctrl + Alt + F7 就回来了。

如果你用的vmware 虚拟机，命令窗口切换的快捷键为 Alt + Space + F1~F6. 如果你在图形界面下请按Alt + Shift + Ctrl + F1~F6 切换至命令窗口。

![img](https://www.runoob.com/wp-content/uploads/2014/06/bg2013081707.png)

------

## Linux 关机

在linux领域内大多用在服务器上，很少遇到关机的操作。毕竟服务器上跑一个服务是永无止境的，除非特殊情况下，不得已才会关机。

正确的关机流程为：sync > shutdown > reboot > halt

关机指令为：shutdown ，你可以man shutdown 来看一下帮助文档。

例如你可以运行如下命令关机：

```
sync 将数据由内存同步到硬盘中。

shutdown 关机指令，你可以man shutdown 来看一下帮助文档。例如你可以运行如下命令关机：

shutdown –h 10 ‘This server will shutdown after 10 mins’ 这个命令告诉大家，计算机将在10分钟后关机，并且会显示在登陆用户的当前屏幕中。

shutdown –h now 立马关机

shutdown –h 20:25 系统会在今天20:25关机

shutdown –h +10 十分钟后关机

shutdown –r now 系统立马重启

shutdown –r +10 系统十分钟后重启

reboot 就是重启，等同于 shutdown –r now

halt 关闭系统，等同于shutdown –h now 和 poweroff
```

最后总结一下，不管是重启系统还是关闭系统，首先要运行 **sync** 命令，把内存中的数据写到磁盘中。

关机的命令有 **shutdown –h now halt poweroff** 和 **init 0** , 重启系统的命令有 **shutdown –r now reboot init 6**。

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