#!/bin/bash
# 皎月连(natpierce)LuCI 插件：仓库结构与 feeds 不同，单独克隆后放进 package/
NATPIERCE_REPO="https://github.com/natpierce/luci-app-natpierce.git"
NATPIERCE_BRANCH="main"
rm -rf ./package/luci-app-natpierce /tmp/natpierce-src
git clone --depth=1 --single-branch --branch "$NATPIERCE_BRANCH" "$NATPIERCE_REPO" /tmp/natpierce-src
cp -rf /tmp/natpierce-src/luci-app-natpierce ./package/
rm -rf /tmp/natpierce-src
ls -ld ./package/luci-app-natpierce
