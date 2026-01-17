# Git 教程

# Git 安装配置

1、最新git源码下载地址：

https://github.com/git/git/releases

https://www.kernel.org/pub/software/scm/git/

可以手动下载下来在上传到服务器上面

2 移除旧版本git

centos自带Git，7.x版本自带git 1.8.3.1（应该是，也可能不是）， 安装新版本之前需要使用yum remove git卸载（安装后卸载也可以）。

```
[root@Git ~]# git --version    ## 查看自带的版本
git version 1.8.3.1
[root@Git ~]# yum remove git   ## 移除原来的版本
```

3 安装所需软件包

```
[root@Git ~]# yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel 
[root@Git ~]# yum install gcc-c++ perl-ExtUtils-MakeMaker
```

下载&安装

```
[root@Git ~]# cd /usr/src
[root@Git ~]# wget https://www.kernel.org/pub/software/scm/git/git-2.7.3.tar.gz
```

5 解压

```
[root@Git ~]# tar xf git-2.7.3.tar.gz
```

6 配置编译安装

```
[root@Git ~]# cd git-2.7.3
[root@Git ~]# make configure
[root@Git ~]# ./configure --prefix=/usr/git ##配置目录
[root@Git ~]# make profix=/usr/git
[root@Git ~]# make install
```

7 加入环境变量

```
[root@Git ~]# echo 'export PATH=$PATH:/usr/git/bin' >> /etc/profile
[root@Git ~]# source /etc/profile
```

8 检查版本

```
[root@Git git-2.7.3]# git --version 
git version 2.7.3
```

# Git 工作流程

### 1、克隆仓库

如果你要参与一个已有的项目，首先需要将远程仓库克隆到本地：

```
git clone https://github.com/username/repo.git
cd repo
```

### 2、创建新分支

为了避免直接在 main 或 master 分支上进行开发，通常会创建一个新的分支：

```bash
git checkout -b new-feature
```

### 3、工作目录

在工作目录中进行代码编辑、添加新文件或删除不需要的文件。

### 4、暂存文件

将修改过的文件添加到暂存区，以便进行下一步的提交操作：

```
git add filename
# 或者添加所有修改的文件
git add .
```

### 5、提交更改

将暂存区的更改提交到本地仓库，并添加提交信息：

```
git commit -m "Add new feature"
```

### 6、拉取最新更改

在推送本地更改之前，最好从远程仓库拉取最新的更改，以避免冲突：

```
git pull origin main
# 或者如果在新的分支上工作
git pull origin new-feature
```

### 7、推送更改

将本地的提交推送到远程仓库：

```
git push origin new-feature
```

### 8、创建 Pull Request（PR）

在 GitHub 或其他托管平台上创建 Pull Request，邀请团队成员进行代码审查。PR 合并后，你的更改就会合并到主分支。

### 9、合并更改

在 PR 审核通过并合并后，可以将远程仓库的主分支合并到本地分支：

```
git checkout main
git pull origin main
git merge new-feature
```

### 10、删除分支

如果不再需要新功能分支，可以将其删除：

```
git branch -d new-feature
```

或者从远程仓库删除分支：

```
git push origin --delete new-feature
```

# Git 工作区、暂存区和版本库Git 创建仓库

### 实例

假设你在工作目录中修改了 file.txt：

**1、工作区**

修改 file.txt 并保存。

**2、暂存区**

将修改添加到暂存区：

```
git add file.txt
```

**3、版本库**

将暂存区的修改提交到本地版本库：

```
git commit -m "Update file.txt"
```

**4、远程仓库**

将本地提交推送到远程仓库：

```
git push origin main
```

# Git 创建仓库

git clone 时，可以所用不同的协议，包括 ssh, git, https 等，其中最常用的是 ssh，因为速度较快，还可以配置公钥免输入密码。各种写法如下：

```
git clone git@github.com:fsliurujie/test.git         --SSH协议
git clone git://github.com/fsliurujie/test.git          --GIT协议
git clone https://github.com/fsliurujie/test.git      --HTTPS协议
```



在 Linux 系统中，commit 信息使用单引号 **'**，Windows 系统，commit 信息使用双引号 **"**。

所以在 git bash 中 **git commit -m '提交说明'** 这样是可以的，在 Windows 命令行中就要使用双引号 **git commit -m "提交说明"**。



config 的增删改查操作如下:

```
//查
git config --global --list

git config --global user.name
git config --global user.email

//增
git config  --global --add user.name xxx
git config  --global --add user.email xxx

//删
git config  --global --unset user.name xxx
git config  --global --unset user.email xxx

//改
git config --global user.name xxx
git config --global user.email xxx
```

# Git 基本操作

git commit、git push、git pull、 git fetch、git merge 的含义与区别

-  git commit：是将本地修改过的文件提交到本地库中；
-  git push：是将本地库中的最新信息发送给远程库；
-  git pull：是从远程获取最新版本到本地，并自动merge；
-  git fetch：是从远程获取最新版本到本地，不会自动merge；
-  git merge：是用于从指定的commit(s)合并到当前分支，用来合并两个分支；

**git pull** 相当于 **git fetch + git merge**。

# Git 分支管理

| **命令**        | **说明**                                                     | **用法示例**                                                 |
| :-------------- | :----------------------------------------------------------- | :----------------------------------------------------------- |
| `git branch`    | 列出、创建或删除分支。它不切换分支，只是用于管理分支的存在。 | `git branch`：列出所有分支 `git branch new-branch`：创建新分支 `git branch -d old-branch`：删除分支 |
| `git checkout`  | 切换到指定的分支或恢复工作目录中的文件。也可以用来检出特定的提交。 | `git checkout branch-name`：切换分支 `git checkout file.txt`：恢复文件到工作区 `git checkout <commit-hash>`：检出特定提交 |
| `git switch`    | 专门用于切换分支，相比 `git checkout` 更加简洁和直观，主要用于分支操作。 | `git switch branch-name`：切换到指定分支 `git switch -c new-branch`：创建并切换到新分支 |
| `git merge`     | 合并指定分支的更改到当前分支。                               | `git merge branch-name`：将指定分支的更改合并到当前分支      |
| `git mergetool` | 启动合并工具，以解决合并冲突。                               | `git mergetool`：使用默认合并工具解决冲突 `git mergetool --tool=<tool-name>`：指定合并工具 |
| `git log`       | 显示提交历史记录。                                           | `git log`：显示提交历史 `git log --oneline`：以简洁模式显示提交历史 |
| `git stash`     | 保存当前工作目录中的未提交更改，并将其恢复到干净的工作区。   | `git stash`：保存当前更改 `git stash pop`：恢复最近保存的更改 `git stash list`：列出所有保存的更改 |
| `git tag`       | 创建、列出或删除标签。标签用于标记特定的提交。               | `git tag`：列出所有标签 `git tag v1.0`：创建一个新标签 `git tag -d v1.0`：删除标签 |
| `git worktree`  | 允许在一个仓库中检查多个工作区，适用于同时处理多个分支。     | `git worktree add <path> branch-name`：在指定路径添加新的工作区并切换到指定分支 `git worktree remove <path>`：删除工作区 |

# Git 查看提交历史

Git 标签
Git Flow
Git 进阶操作
Git Github
Git 服务器搭建
Sourcetree