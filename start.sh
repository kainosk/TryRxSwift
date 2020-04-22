#!/bin/sh

# carthage が無いならインストール
if !(type 'carthage' > /dev/null 2>&1); then
    brew install carthage
fi

# XcodeGen が無いならインストール
if !(type 'xcodegen' > /dev/null 2>&1); then
    brew install xcodegen
fi

# gnu-sed (gsed) が無いならインストール
if !(type 'gsed' > /dev/null 2>&1); then
    brew install gnu-sed
fi

if [ $# -eq 1 ]; then
    if [ $1 = "full" ]; then
        # full 指定時のみ carthage ビルドする。
        carthage bootstrap --no-use-binaries --platform iOS
    fi

fi

xcodegen generate

# 準備ができたら Xcode を開いてあげる。
open TryRxSwift.xcodeproj