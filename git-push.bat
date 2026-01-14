@echo off
:: 正确切换编码为 UTF-8，解决中文乱码（> nul 2>&1 隐藏执行结果）
chcp 65001 > nul 2>&1

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

:: 判断命令是否执行成功
if %errorlevel% equ 0 (
    echo.
    echo ✅ 操作执行完成！
) else (
    echo.
    echo ❌ 操作失败，请检查错误信息！
)
pause  :: 执行完不自动关闭窗口，方便查看结果