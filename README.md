# git-who - 程序员终极甩锅 CLI

🔥 本地一键溯源 + 自动飞书群@责任人

## 安装
chmod +x git-who
sudo mv git-who /usr/local/bin/

## 配置
使用环境变量设置飞书 WebHook：

export FEISHU_WEBHOOK_URL="https://open.feishu.cn/open-apis/bot/v2/hook/xxxx"

## 使用
git-who 文件名 行号

## 示例
git-who main.js 88

## 打包为 Skill
仓库已内置 Skill 打包目录和脚本：

1) 一键打包
./scripts/build-skill.sh

2) 产物位置
dist/git-who-skill.zip

## 发布到 SkillHub
当前环境没有 SkillHub 官方发布 CLI，无法直接自动推送到平台。

可用方式：

1) 打开 SkillHub 发布页面
2) 上传 dist/git-who-skill.zip
3) 按页面提示填写名称、描述并发布