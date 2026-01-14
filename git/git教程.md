# Git 教程

![Git 教程](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/f7246b600c338744a9591cd7530fd9f9d62aa0f8.png)

Git 是一个开源的分布式版本控制系统，用于敏捷高效地处理任何或小或大的项目。

Git 是 Linus Torvalds 为了帮助管理 Linux 内核开发而开发的一个开放源码的版本控制软件。

Git 与常用的版本控制工具 CVS, Subversion 等不同，它采用了分布式版本库的方式，不必服务器端软件支持。

------

## Git 与 SVN 区别

Git 不仅仅是个版本控制系统，它也是个内容管理系统(CMS)，工作管理系统等。

如果你是一个具有使用 SVN 背景的人，你需要做一定的思想转换，来适应 Git 提供的一些概念和特征。

Git 与 SVN 区别点：

- **1、Git 是分布式的，SVN 不是**：这是 Git 和其它非分布式的版本控制系统，例如 SVN，CVS 等，最核心的区别。

- **2、Git 把内容按元数据方式存储，而 SVN 是按文件：**所有的资源控制系统都是把文件的元信息隐藏在一个类似 .svn、.cvs 等的文件夹里。

- **3、Git 分支和 SVN 的分支不同：**分支在 SVN 中一点都不特别，其实它就是版本库中的另外一个目录。

- **4、Git 没有一个全局的版本号，而 SVN 有：**目前为止这是跟 SVN 相比 Git 缺少的最大的一个特征。

- **5、Git 的内容完整性要优于 SVN：**Git 的内容存储使用的是 SHA-1 哈希算法。这能确保代码内容的完整性，确保在遇到磁盘故障和网络问题时降低对版本库的破坏。

  

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/0D32F290-80B0-4EA4-9836-CA58E22569B3.jpg)

------

## Git 快速入门

本站也提供了 Git 快速入门版本，你可以点击 [Git 简明指南](https://www.runoob.com/manual/git-guide/) 查看。

入门后建议通过本站详细学习 Git 教程。

Git 完整命令手册地址：http://git-scm.com/docs

PDF 版命令手册：[github-git-cheat-sheet.pdf](https://www.runoob.com/manual/github-git-cheat-sheet.pdf)

# Git 安装配置

在使用 Git 前我们需要先安装 Git。

Git 目前支持 Linux/Unix、Solaris、Mac和 Windows 平台上运行。

Git 各平台安装包下载地址为：http://git-scm.com/downloads

[![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/git-download.png)](http://git-scm.com/downloads)

------

## Linux 平台上安装

各大 Linux 平台可以使用包管理器（apt-get、yum 等）进行安装。

Debian/Ubuntu Git 安装最新稳定版本命令为：

```
apt-get install git
```

### Centos/RedHat

如果你使用的系统是 Centos/RedHat 安装命令为：

```
yum -y install git-core
```

Fedora 安装命令：

```
# yum install git (Fedora 21 及之前的版本)
# dnf install git (Fedora 22 及更高新版本)
```

FreeBSD 安装命令：

```
pkg install git
```

OpenBSD 安装命令：

```
pkg_add git
```

Alpine 安装命令：

```
apk add git
```

### 源码安装

我们也可以在官网下载源码包来安装，最新源码包下载地址：https://mirrors.edge.kernel.org/pub/software/scm/git/。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/git-source.png)

也可以在 GitHub 上克隆源码包：

```
git clone https://github.com/git/git
```

解压安装下载的源码包：

```
$ tar -zxf git-1.7.2.2.tar.gz
$ cd git-1.7.2.2
$ make prefix=/usr/local all
$ sudo make prefix=/usr/local install
```

------

## Windows 平台上安装

在 Windows 平台上安装 Git 同样轻松，有个叫做 msysGit 的项目提供了安装包，可以到 GitHub 的页面上下载 exe 安装文件并运行：

安装包下载地址：https://gitforwindows.org/

直接官网下载也可以：https://git-scm.com/download/win。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/git-win.png)

下载后，双击安装包，打开界面如下所示，点击 "next" 按钮开始安装：

![img](https://www.runoob.com/wp-content/uploads/2015/02/20140127131250906)

完成安装之后，就可以使用命令行的 git 工具（已经自带了 ssh 客户端）了，另外还有一个图形界面的 Git 项目管理工具。

在开始菜单里找到 **"Git"->"Git Bash"**，会弹出 Git 命令窗口，你可以在该窗口进行 Git 操作。

### 使用 winget 工具

如果你已经安装了 winget，可以使用以下命令来安装：

```
winget install --id Git.Git -e --source winget
```

------

## Mac 平台上安装

通过 Homebrew 安装：

```
brew install git
```

如果您想要安装 git-gui 和 gitk（git 的提交 GUI 和交互式历史记录浏览器），您可以使用 homebrew 进行安装：

```
brew install git-gui
```

也可以使用图形化的 Git 安装工具，下载地址为：

https://sourceforge.net/projects/git-osx-installer/

安装界面如下所示：



![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/18333fig0107-tn.png)

------

## Git 配置

Git 提供了一个叫做 **git config** 的命令，用来配置或读取相应的工作环境变量。

这些环境变量，决定了 Git 在各个环节的具体工作方式和行为。

这些变量可以存放在以下三个不同的地方：

- `/etc/gitconfig` 文件：系统中对所有用户都普遍适用的配置。若使用 `git config` 时用 `--system` 选项，读写的就是这个文件。
- `~/.gitconfig` 文件：用户目录下的配置文件只适用于该用户。若使用 `git config` 时用 `--global` 选项，读写的就是这个文件。
- 当前项目的 Git 目录中的配置文件（也就是工作目录中的 `.git/config` 文件）：这里的配置仅仅针对当前项目有效。每一个级别的配置都会覆盖上层的相同配置，所以 `.git/config` 里的配置会覆盖 `/etc/gitconfig` 中的同名变量。

在 Windows 系统上，Git 会找寻用户主目录下的 .gitconfig 文件。主目录即 $HOME 变量指定的目录，一般都是 C:\Documents and Settings\$USER。

此外，Git 还会尝试找寻 /etc/gitconfig 文件，只不过看当初 Git 装在什么目录，就以此作为根目录来定位。

### 用户信息

配置个人的用户名称和电子邮件地址，这是为了在每次提交代码时记录提交者的信息：

```
git config --global user.name "runoob"
git config --global user.email test@runoob.com
```

如果用了 **--global** 选项，那么更改的配置文件就是位于你用户主目录下的那个，以后你所有的项目都会默认使用这里配置的用户信息。

如果要在某个特定的项目中使用其他名字或者电邮，只要去掉 --global 选项重新配置即可，新的设定保存在当前项目的 .git/config 文件里。

### 文本编辑器

设置 Git 默认使用的文本编辑器,一般可能会是 Vi 或者 Vim，如果你有其他偏好，比如 VS Code 的话，可以重新设置：

```
git config --global core.editor "code --wait"
```

### 差异分析工具

还有一个比较常用的是，在解决合并冲突时使用哪种差异分析工具。比如要改用 vimdiff 的话：

```
git config --global merge.tool vimdiff
```

Git 可以理解 kdiff3，tkdiff，meld，xxdiff，emerge，vimdiff，gvimdiff，ecmerge，和 opendiff 等合并工具的输出信息。

当然，你也可以指定使用自己开发的工具，具体怎么做可以参阅第七章。

### 查看配置信息

要检查已有的配置信息，可以使用 **git config --list** 命令：

```
$ git config --list
http.postbuffer=2M
user.name=runoob
user.email=test@runoob.com
```

有时候会看到重复的变量名，那就说明它们来自不同的配置文件（比如 /etc/gitconfig 和 ~/.gitconfig），不过最终 Git 实际采用的是最后一个。

这些配置我们也可以在 **~/.gitconfig** 或 **/etc/gitconfig** 看到，如下所示：

```
vim ~/.gitconfig 
```

显示内容如下所示：

```
[http]
    postBuffer = 2M
[user]
    name = runoob
    email = test@runoob.com
```

也可以直接查阅某个环境变量的设定，只要把特定的名字跟在后面即可，像这样：

```
$ git config user.name
runoob
```

### 生成 SSH 密钥（可选）

如果你需要通过 SSH 进行 Git 操作，可以生成 SSH 密钥并添加到你的 Git 托管服务（如 GitHub、GitLab 等）上。

```
ssh-keygen -t rsa -b 4096 -C "your.email@example.com"
```

按提示完成生成过程，然后将生成的公钥添加到相应的平台。

### 验证安装

在终端或命令行中运行以下命令，确保 Git 已正确安装并配置：

```
git --version
git config --list
```

# Git 工作流程

# Git 工作区、暂存区和版本库Git 创建仓库

# Git 基本操作

# Git 分支管理

# Git 查看提交历史

# Git 标签

# Git Flow

# Git 进阶操作

# Git Github

# Git 服务器搭建

# Sourcetree

# Git 测验