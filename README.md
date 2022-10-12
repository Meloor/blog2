# blog
## 介绍
---

hexo个人博客markdown源码

## 开发说明
---

1. clone该仓库
2. blog目录下安装hexo依赖包：
>npm install
>yarn #代替npm
>yarn global add hexo #全局安装hexo, 命令行hexo指令变为绿色
3. 部署hexo
>hexo clean#清除
hexo generate # 生成静态网页
hexo server #本地启动服务
hexo deployer #部署到远程git仓库

## md博客
图片最好放在同级目录的同名目录下，这样在本地编写md的预览和静态网页中的图片路径都能找到，图片都能正常显示