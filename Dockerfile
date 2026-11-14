# 基于 MalikClaw 官方镜像
FROM ghcr.io/abdullahmalik17/malikclaw:latest

# 将容器内端口改为 UppCoder 期望的 APP_PORT (8000)
# 如果 MalikClaw 不支持直接指定端口，则通过环境变量或启动脚本适配
ENV PORT=8000
# 或者，如果 MalikClaw 识别 WEB_PORT 之类的变量，请替换为正确的变量名

# 暴露 UppCoder 期望的端口
EXPOSE 8000

# 启动 MalikClaw (使用其默认入口点，但确保它在前台运行)
# 如果官方镜像的 ENTRYPOINT 不是在前台运行的，你可能需要覆盖 CMD
CMD ["malikclaw", "gateway"]
