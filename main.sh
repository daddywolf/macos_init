#!/bin/bash

# ==============================================================================
# 在脚本开头请求并保持管理员权限
# ==============================================================================
echo "此脚本需要管理员权限来安装某些软件。"
echo "请输入您的登录密码以继续（输入过程不可见）："

# sudo -v 会更新用户现有的sudo时间戳，如果时间戳尚未存在，则会提示输入密码。
sudo -v

# 在后台启动一个循环，每隔60秒刷新一次sudo的时间戳，直到主脚本退出。
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "权限获取成功，脚本开始执行..."
echo "阶段 1: 正在安装所有应用程序..."

# --- 安装 Cask 应用 ---
brew install --cask wechat
brew install --cask qq
brew install --cask google-chrome
brew install --cask steam
brew install --cask whatsapp
brew install --cask sublime-text
brew install --cask iterm2
brew install --cask pycharm
brew install --cask zerotier-one
brew install --cask tor-browser
brew install --cask youdaodict
brew install --cask baidunetdisk
brew install --cask tencent-meeting
brew install --cask microsoft-word
brew install --cask microsoft-excel
brew install --cask microsoft-powerpoint
brew install --cask microsoft-outlook
brew install --cask microsoft-teams
brew install --cask onedrive


# --- 安装 Dock 配置工具 ---
brew install dockutil


# =======================================================
# 阶段 2: 配置 Dock
# =======================================================
echo "阶段 2: 正在配置 Dock..."

dockutil --remove all --no-restart

dockutil --add '/Applications/Launchpad.app' --no-restart
dockutil --add '/Applications/Safari.app' --no-restart
dockutil --add '/Applications/Google Chrome.app' --no-restart
dockutil --add '/System/Applications/Messages.app' --no-restart
dockutil --add '/System/Applications/Maps.app' --no-restart
dockutil --add '/System/Applications/Photos.app' --no-restart
dockutil --add '/System/Applications/FaceTime.app' --no-restart
dockutil --add '/System/Applications/Calendar.app' --no-restart
dockutil --add '/System/Applications/Contacts.app' --no-restart
dockutil --add '/System/Applications/Notes.app' --no-restart
dockutil --add '/System/Applications/Music.app' --no-restart
dockutil --add '/Applications/QQ.app' --no-restart
dockutil --add '/Applications/WeChat.app' --no-restart
dockutil --add '/System/Applications/App Store.app' --no-restart
dockutil --add '/System/Applications/System Settings.app' # 不带 --no-restart 来刷新 Dock


# =======================================================
# 阶段 3: 收尾工作
# =======================================================
echo "阶段 3: 正在设置自动更新并清理..."

# 设置 Homebrew 自动更新
brew tap homebrew/autoupdate
brew autoupdate start

# 执行一次最终的清理
brew cleanup

echo "✅ 脚本执行完毕！"
