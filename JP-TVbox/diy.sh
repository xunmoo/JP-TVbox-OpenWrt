#!/bin/bash

# Default IP
sed -i 's/192.168.1.1/192.168.50.2/g' package/base-files/files/bin/config_generate

# Add packages
#添加科学上网源
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone --depth 1 https://github.com/ophub/luci-app-amlogic package/amlogic
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall

#删除库中的插件，使用自定义源中的包。
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/applications/luci-app-argon-config
rm -rf feeds/luci/applications/openwrt-passwall
