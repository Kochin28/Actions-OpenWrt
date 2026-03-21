#!/bin/bash
#
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 1. 修改默認 IP 地址為 192.168.6.1
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# 2. 強制定義 CT3003 硬件目標配置 (確保編譯出正確的 bin 檔)
echo "CONFIG_TARGET_mediatek=y" >> .config
echo "CONFIG_TARGET_mediatek_filogic=y" >> .config
echo "CONFIG_TARGET_mediatek_filogic_DEVICE_cetron_ct3003=y" >> .config

# 3. 選中 SSR-Plus 插件及其核心
echo "CONFIG_PACKAGE_luci-app-ssr-plus=y" >> .config
echo "CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Xray=y" >> .config

# 4. 選中 PassWall2 插件及其核心
echo "CONFIG_PACKAGE_luci-app-passwall=y" >> .config
echo "CONFIG_PACKAGE_luci-app-passwall_INCLUDE_SingBox=y" >> .config
echo "CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Xray=y" >> .config

# 5. 設置介面語言為簡體中文
echo "CONFIG_LUCI_LANG_zh_Hans=y" >> .config
