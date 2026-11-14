#!/bin/bash
# 将 MalikClaw 的监听端口设置为 UppCoder 期望的 APP_PORT (默认8000)
export PORT=${APP_PORT:-8000}

# 启动 MalikClaw 网关 (请根据其实际启动命令调整)
# 官方 Docker 镜像可能使用不同的入口点，例如 "malikclaw gateway" 或直接使用二进制文件
exec malikclaw gateway
