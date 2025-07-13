#!/bin/bash

# =======================================================
# 阶段 1: 安装所有需要的工具和应用
# =======================================================
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
brew install --cask windows-app
brew install --cask omnissa-horizon-client
brew install --cask deepl
brew install --cask baidunetdisk
brew install --cask discord
brew install --cask notion
brew install --cask tencent-meeting
brew install --cask microsoft-office-businesspro

# --- 安装 App Store 应用 ---
brew install mas
mas install 1451685025 # wireguard

# --- 安装 Dock 配置工具 ---
brew install dockutil


# =======================================================
# 阶段 2: 配置 Dock
# =======================================================
echo "阶段 2: 正在配置 Dock..."

dockutil --remove all --no-restart

dockutil --add '/Applications/Launchpad.app' --no-restart
dockutil --add '/System/Applications/Safari.app' --no-restart
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
