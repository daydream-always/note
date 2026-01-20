快速设置— 如果你知道该怎么操作，直接使用下面的地址
SSH https://gitee.com/CHENKAIforyou/note.git

我们强烈建议所有的git仓库都有一个`README`, `LICENSE`, `.gitignore`文件

#### 简易的命令行入门教程:

Git 全局设置:

```bash
git config --global user.name "daydream-always"
git config --global user.email "925037994@qq.com"
```

创建 git 仓库:

```bash
mkdir note
cd note
git init 
touch README.md
git add README.md
git commit -m "first commit"
git remote add origin https://gitee.com/CHENKAIforyou/note.git
git push -u origin "master"
```

已有仓库?

```bash
cd existing_git_repo
git remote add origin https://gitee.com/CHENKAIforyou/note.git #远程仓库添加
git push -u origin "master"
```



极速

```bash
git add .
git commit -m "modify"
git push gitee "main"
git push github "main"
```

其他

```bash
git remote -v #查看远程仓库
git remote remove origin #移除名为 origin 的远程仓库
```



