#!/bin/sh

# 设置项目名称和虚拟环境目录
PROJECT_NAME="ai_project"
VENV_DIR=".venv"

# 创建项目目录
# mkdir -p "${PROJECT_NAME}"
#cd "${PROJECT_NAME}" || exit 1

# 创建Python虚拟环境
echo "正在创建虚拟环境..."
python -m venv "${VENV_DIR}"

# 安装核心依赖
echo "正在安装基础依赖..."
"${VENV_DIR}/Scripts/python" -m pip install --upgrade pip
"${VENV_DIR}/Scripts/pip" install wheel setuptools

source .venv/Scripts/activate

# 安装项目依赖
echo "正在安装项目依赖..."
"${VENV_DIR}/Scripts/pip" install -r requirements.txt

echo "项目初始化完成！"
