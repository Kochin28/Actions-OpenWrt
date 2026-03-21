#!/bin/bash
# 1. 修改默認 IP 地址
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# 2. 清理舊配置
sed -i '/CONFIG_TARGET/d' .config
sed -i '/CONFIG_PACKAGE_luci-app/d' .config

# 3. 定義硬件目標 (CT3003)
echo "CONFIG_TARGET_mediatek=y" >> .config
echo "CONFIG_TARGET_mediatek_filogic=y" >> .config
echo "CONFIG_TARGET_mediatek_filogic_DEVICE_cetron_ct3003=y" >> .config

# 4. 選中 SSR Plus 及其核心
echo "CONFIG_PACKAGE_luci-app-ssr-plus=y" >> .config
echo "CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Xray=y" >> .config
echo "CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ChinaDNS_NG=y" >> .config

# 5. 選中 PassWall 2 及其核心
echo "CONFIG_PACKAGE_luci-app-passwall=y" >> .config
echo "CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Xray=y" >> .config
echo "CONFIG_PACKAGE_luci-app-passwall_INCLUDE_SingBox=y" >> .config

# 6. 極致瘦身：刪除唔必要嘅佔位大戶
echo "# CONFIG_PACKAGE_luci-app-docker is not set" >> .config
echo "# CONFIG_PACKAGE_luci-app-adguardhome is not set" >> .config
echo "# CONFIG_PACKAGE_luci-theme-bootstrap is not set" >> .config
echo "# CONFIG_PACKAGE_luci-theme-material is not set" >> .config
echo "CONFIG_LUCI_LANG_zh_Hans=y" >> .config
