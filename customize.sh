#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#0.  "添加 gd772 Package"
rm -rf ./openwrt/feeds/luci/applications/luci-app-rp-pppoe-server
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.9.1/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/80/82/g' openwrt/package/network/services/uhttpd/files/uhttpd.config
#2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf
