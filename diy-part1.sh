#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git diy1 https://github.com/xiaorouji/openwrt-passwall.git;main' feeds.conf.default
#Add one package to pacakge
#cp -rf $GITHUB_WORKSPACE/custom package/
svn checkout https://github.com/Aibx/OpenWRT-Packages/trunk/luci-app-openclash  package/custom/luci-app-openclash
svn checkout https://github.com/Aibx/OpenWRT-Packages/trunk/luci-app-aliddns package/custom/luci-app-aliddns
