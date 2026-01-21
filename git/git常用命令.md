![image-20260117160956120](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/image-20260117160956120.png)

master：默认开发分支、origin：默认远程版本库

Head：默认开发分支、Head~：Head的父提交

git init、git clone

git status、git diff

git mv、git rm

git add

git commit -m、git commit -am

git log --oneline

git reset、git revert

git checkout

git branch、git checkout、git merge

git tag

git remote -v

git remote add 

git pull

git push



🔧 基础操作
# 初始化仓库
git init

# 克隆远程仓库
git clone <repo_url>

# 查看当前状态
git status

# 添加全部修改到暂存区
git add .

# 提交到本地仓库
git commit -m "提交说明"

# 查看提交历史（精简版）
git log --oneline

# 查看文件修改差异
git diff



🌿 分支管理

# 创建新分支
git branch <branch_name>

# 切换分支
git checkout <branch_name>

# 创建并切换分支
git checkout -b <new_branch>

# 合并分支到当前分支
git merge <branch_name>

# 删除本地分支
git branch -d <branch_name>

# 强制删除未合并分支
git branch -D <branch_name>

# 查看所有分支（含远程）
git branch -a



🚀 远程仓库操作

# 添加远程仓库
git remote add <remote_name> <repo_url>

# 推送本地分支到远程
git push -u <remote_name> <branch_name>

# 强制推送（慎用！）
git push -f

# 拉取远程更新
git pull <remote_name> <branch_name>

# 获取远程分支但不合并
git fetch

# 删除远程分支
git push <remote_name> --delete <branch_name>



⏪ 撤销操作

# 撤销工作区修改
git checkout -- <file>

# 撤销暂存区文件
git reset HEAD <file>

# 修改最后一次提交
git commit --amend

# 回退到指定提交（保留修改）
git reset --soft <commit_id>

# 彻底回退到指定提交（慎用！）
git reset --hard <commit_id>

# 恢复误删的文件
git checkout <commit_id> -- <file_path>



🔍 日志与查询

# 图形化提交历史
git log --graph --all

# 按作者搜索提交
git log --author="name"

# 搜索提交内容
git log -S "keyword"

# 显示某文件的修改历史
git blame <file>



🔗 标签管理

# 创建标签
git tag <tag_name>

# 创建带注释标签
git tag -a v1.0 -m "版本说明"

# 推送标签到远程
git push --tags

# 删除本地标签
git tag -d <tag_name>

# 删除远程标签
git push origin :refs/tags/<tag_name>



🧩 高级操作

# 贮藏当前修改
git stash

# 应用最近贮藏
git stash pop

# 交互式变基（修改最近3次提交）
git rebase -i HEAD~3

# 二分法查找问题提交
git bisect start
git bisect bad         # 标记当前为错误提交
git bisect good <id>   # 标记已知正常提交

# 清理未跟踪文件
git clean -fd



⚙️ 配置相关

# 全局用户名配置
git config --global user.name "Your Name"

# 全局邮箱配置
git config --global user.email "email@example.com"

# 查看所有配置
git config --list

# 设置别名（例如简化log）
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"



📦 子模块管理

# 添加子模块
git submodule add <repo_url> <path>

# 初始化子模块
git submodule init

# 更新子模块
git submodule update



📌 实用技巧

# 忽略文件权限变更
git config core.fileMode false

# 生成.gitignore模板
curl https://gitignore.io/api/<语言/工具>

# 查看仓库大小
git count-objects -vH

# 克隆指定分支（浅克隆）
git clone --branch <branch_name> --depth 1 <repo_url>

注意事项：
–force操作前务必确认影响范围
重要分支（如main/master）避免直接修改
推荐使用SSH协议进行远程操作
定期执行 git gc 优化仓库

```bash
🔧 基础操作
# 初始化仓库
git init

# 克隆远程仓库
git clone <repo_url>

# 查看当前状态
git status

# 添加全部修改到暂存区
git add .

# 提交到本地仓库
git commit -m "提交说明"

# 查看提交历史（精简版）
git log --oneline

# 查看文件修改差异
git diff



🌿 分支管理
# 创建新分支
git branch <branch_name>

# 切换分支
git checkout <branch_name>

# 创建并切换分支
git checkout -b <new_branch>

# 合并分支到当前分支
git merge <branch_name>

# 删除本地分支
git branch -d <branch_name>

# 强制删除未合并分支
git branch -D <branch_name>

# 查看所有分支（含远程）
git branch -a



🚀 远程仓库操作
# 添加远程仓库
git remote add <remote_name> <repo_url>

# 推送本地分支到远程
git push -u <remote_name> <branch_name>

# 强制推送（慎用！）
git push -f

# 拉取远程更新
git pull <remote_name> <branch_name>

# 获取远程分支但不合并
git fetch

# 删除远程分支
git push <remote_name> --delete <branch_name>
运行项目并下载源码



⏪ 撤销操作
# 撤销工作区修改
git checkout -- <file>

# 撤销暂存区文件
git reset HEAD <file>

# 修改最后一次提交
git commit --amend

# 回退到指定提交（保留修改）
git reset --soft <commit_id>

# 彻底回退到指定提交（慎用！）
git reset --hard <commit_id>

# 恢复误删的文件
git checkout <commit_id> -- <file_path>



🔍 日志与查询
# 图形化提交历史
git log --graph --all

# 按作者搜索提交
git log --author="name"

# 搜索提交内容
git log -S "keyword"

# 显示某文件的修改历史
git blame <file>



🔗 标签管理
# 创建标签
git tag <tag_name>

# 创建带注释标签
git tag -a v1.0 -m "版本说明"

# 推送标签到远程
git push --tags

# 删除本地标签
git tag -d <tag_name>

# 删除远程标签
git push origin :refs/tags/<tag_name>



🧩 高级操作
# 贮藏当前修改
git stash

# 应用最近贮藏
git stash pop

# 交互式变基（修改最近3次提交）
git rebase -i HEAD~3

# 二分法查找问题提交
git bisect start
git bisect bad         # 标记当前为错误提交
git bisect good <id>   # 标记已知正常提交

# 清理未跟踪文件
git clean -fd



⚙️ 配置相关
# 全局用户名配置
git config --global user.name "Your Name"

# 全局邮箱配置
git config --global user.email "email@example.com"

# 查看所有配置
git config --list

# 设置别名（例如简化log）
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"



📦 子模块管理
# 添加子模块
git submodule add <repo_url> <path>

# 初始化子模块
git submodule init

# 更新子模块
git submodule update



📌 实用技巧
# 忽略文件权限变更
git config core.fileMode false

# 生成.gitignore模板
curl https://gitignore.io/api/<语言/工具>

# 查看仓库大小
git count-objects -vH

# 克隆指定分支（浅克隆）
git clone --branch <branch_name> --depth 1 <repo_url>


注意事项：
–force操作前务必确认影响范围
重要分支（如main/master）避免直接修改
推荐使用SSH协议进行远程操作
定期执行 git gc 优化仓库
```

