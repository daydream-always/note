### 方法一：使用 CMD 批处理脚本（.bat）

这是 Windows CMD 下最直接、易用的方式，创建一个批处理文件，双击或输入文件名就能执行全部 Git 操作。

#### 1. 创建批处理文件

在你的项目根目录（或任意方便的目录）新建一个文本文件，重命名为 `git-push.bat`（注意后缀是 `.bat`，不是 `.txt`），编辑内容如下：

```bat
@echo off
chcp 65001 > nul 2>&1  :: 解决中文乱码问题

:: 判断是否传入了提交信息参数
if "%~1"=="" (
    set "commit_msg=modify"  :: 没有参数时使用默认信息
) else (
    set "commit_msg=%~1"     :: 有参数时使用传入的自定义信息
)

echo 开始执行 Git 提交和推送...
echo 提交信息：%commit_msg%

:: 执行 Git 命令
git add .
git commit -m "%commit_msg%"
git push gitee main

if %errorlevel% equ 0 (
    echo.
    echo ✅ 操作执行完成！
) else (
    echo.
    echo ❌ 操作失败，请检查错误信息！
)
pause  :: 执行完不自动关闭窗口，方便查看结果
```

#### 2. 使用方式

- **方式 1：在 CMD 中执行**

  打开 CMD，切换到 `git-push.bat` 所在目录，执行：

  ```cmd
  :: 使用默认提交信息 "modify"
  git-push.bat
  
  :: 使用自定义提交信息（注意引号）
  git-push.bat "修复表单验证逻辑"
  ```

- **方式 2：双击执行**

  直接双击 `git-push.bat` 文件，会自动使用默认提交信息执行操作。

  

### 方法二：给 CMD 设置临时别名（仅当前会话有效）

Windows CMD 没有直接的永久别名机制，但可以用 `doskey` 设置临时别名（关闭 CMD 后失效）：

```cmd
:: 设置临时别名 gp，使用默认提交信息
doskey gp1=git add . ^&^& git commit -m "modify" ^&^& git push gitee main
doskey gp1=git add . ^&^& git commit -m "modify" ^&^& git push gitee main

:: 设置支持自定义信息的别名（需传参数）
doskey gpc1=git add . ^&^& git commit -m $1 ^&^& git push gitee main
doskey gpc2=git add . ^&^& git commit -m $1 ^&^& git push github main
```