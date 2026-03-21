#!/bin/bash
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 1. 添加 SSR-Plus 插件源
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# 2. 添加 PassWall2 及其依賴插件源
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages' >>feeds.conf.default

# 備註：SSR-Plus 喺 OpenWrt 入面通常就係叫 helloworld 呢個 Feed 名
