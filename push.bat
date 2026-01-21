@echo off
chcp 65001 >nul 2>&1

:: ========== 核心配置（已适配你的仓库路径） ==========
set REPO_PATH=D:\note
set GIT_USER=daydream-always
set GIT_EMAIL=925037994@qq.com  # 替换为你的Git邮箱

for /f "tokens=2 delims==" %%a in ('wmic os get localdatetime /value') do set dt=%%a
set YYYY=%dt:~0,4%
set MM=%dt:~4,2%
set DD=%dt:~6,2%
set HH=%dt:~8,2%
set MN=%dt:~10,2%
set SS=%dt:~12,2%
set COMMIT_MSG=Auto commit: %YYYY%-%MM%-%DD% %HH%:%MN%:%SS%

:: 要推送的远程仓库列表（对应你的aliyun/gitea/gitee/github/huaweiyun）
set REMOTE_LIST=aliyun gitea gitee github huaweiyun
:: ========== 配置结束 ==========

:: 进入仓库目录（关键：必须切换到D盘的note目录）
cd /d "%REPO_PATH%" || (
    echo 【错误】仓库路径不存在：%REPO_PATH%
    pause
    exit /b 1
)

:: 临时设置Git用户信息（避免提交时缺少身份信息）
git config user.name "%GIT_USER%"
git config user.email "%GIT_EMAIL%"

:: 拉取GitHub最新代码（选一个主要仓库拉取即可，避免冲突）
echo.
echo 【步骤1】拉取GitHub远程仓库最新代码...
git pull github main || (
    echo 【警告】拉取GitHub代码失败（可能网络/权限问题），继续尝试提交
)

:: 添加所有变更文件
echo.
echo 【步骤2】添加所有变更文件...
git add .

:: 检查是否有代码变更（无变更则直接退出）
git diff --cached --quiet
if %errorlevel% equ 0 (
    echo 【提示】无代码变更，无需提交推送
    exit /b 0
)

:: 提交代码
echo.
echo 【步骤3】提交代码...
git commit -m "%COMMIT_MSG%" || (
    echo 【错误】代码提交失败，请检查本地仓库状态
    pause
    exit /b 1
)

:: 循环推送至所有远程仓库
echo.
echo 【步骤4】推送至所有远程仓库...
for %%r in (%REMOTE_LIST%) do (
    echo --- 正在推送至 %%r ---
    git push %%r main || (
        echo 【警告】推送至 %%r 失败（可能网络/权限问题），继续推送下一个
    )
)

echo.
echo 【完成】定时提交推送流程结束
exit /b 0