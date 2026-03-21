#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# 添加 PassWall 2 軟件源
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall;main' >> feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages;main' >> feeds.conf.default
