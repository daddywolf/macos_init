#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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
brew install mas

mas install 1451685025 # wireguard

# 自动更新
brew tap homebrew/autoupdate
brew autoupdate start

brew cleanup

echo "✅ 所有软件已尝试安装完毕！"

# 确保 dockutil 已安装
brew install dockutil

echo "正在清空 Dock..."
dockutil --remove all --no-restart

echo "正在按顺序添加应用..."
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
dockutil --add '/System/Applications/System Settings.app'

brew remove dockutil
brew cleanup

echo "✅ Dock 已按指定顺序重新排列！"
