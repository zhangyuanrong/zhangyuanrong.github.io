@echo off
chcp 65001
setlocal enabledelayedexpansion
:: 自动切换到脚本所在目录
cd /d "%~dp0"

:: ========== bilibili 99篇 N=2~100 ==========
for /L %%i in (2,1,100) do (
set "fn=_posts/bilibili/2026-09-17-b%%i.md"
echo ---^>title: 会计‑第%%i篇>!fn!
echo categories: bilibili>>!fn!
echo comments: true>>!fn!
echo --->>!fn!
echo.>>!fn!
echo ## 会计‑第%%i篇>>!fn!
echo.>>!fn!
echo - ^<u^>^<a href="https://www.bilibili.com/video/BV11LsgzJEBm/?spm_id_from=333.1391.0.0^&p=%%i^&vd_source=743efdb7b3f46d37409bdfe9d56d80cb" style="color:blue" target="_blank"^>合并财务报表学习 第%%i讲^</a^>^</u^>>>!fn!
)

:: ========== wechat 99篇 N=2~100 ==========
for /L %%i in (2,1,100) do (
set "fn=_posts/wechat/2026-09-18-c%%i.md"
echo ---^>title: 水一：借贷无意义‑第%%i篇>!fn!
echo categories: wechat>>!fn!
echo comments: true>>!fn!
echo --->>!fn!
echo.>>!fn!
echo # 一、缘起（第%%i篇）>>!fn!
echo 在学习金融资产章节，有一个典型的分录：>>!fn!
echo.>>!fn!
echo ```>>!fn!
echo 借：交易性金融资产‑公允价值变动损益>>!fn!
echo 贷：公允价值变动损益>>!fn!
echo ```>>!fn!
echo.>>!fn!
echo 第%%i篇：当时还不明白这个分录是什么意思，只能硬记。>>!fn!
echo.>>!fn!
echo 第一，先搞清两个会计科目属于哪一类要素：>>!fn!
echo 交易性金融资产是资产类科目（公允价值变动损益是二级明细），公允价值变动损益是损益类科目。>>!fn!
echo.>>!fn!
echo 第二，结合会计恒等式理解：>>!fn!
echo.>>!fn!
echo 资产↑+成本Δ+费用Δ=负债Δ+所有者权益Δ+收入↑>>!fn!
)

:: ========== writing 99篇 N=2~100 ==========
for /L %%i in (2,1,100) do (
set "fn=_posts/writing/2026-09-16-w%%i.md"
echo ---^>title: 审计‑第%%i篇>!fn!
echo categories: writing>>!fn!
echo comments: true>>!fn!
echo --->>!fn!
echo.>>!fn!
echo ## 审计‑第%%i篇>>!fn!
echo.>>!fn!
echo - ^<u^>^<a href="https://docs.maoyanqing.com/" style="color:blue" target="_blank"^>审计文库 文档%%i^</a^>^</u^>>>!fn!
)

echo.
echo ✅ 已生成 bilibili、wechat、writing 各99篇md文件。
pause
