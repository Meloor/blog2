# blog
## 1. 介绍


hexo个人博客markdown源码

## 2. hexo部署到github pages步骤
### **0 [本地安装node环境](./node%20install.md)**

wsl2安装nvm:
>curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source .zshrc # 运行后nvm命令才可以使用

nvm安装node:
>nvm install 18
nvm use 18

yarn安装：
>npm install --global yarn
yarn --version

### **1 本地安装hexo环境**
>npm install
>yarn #代替npm
>yarn global add hexo #全局安装hexo, 命令行hexo指令变为绿色
###  **2 hexo配置(url, deploy repo)**
_config.yml:
```json
url:  http://meloor.github.io/
deploy:
  type: git
  # 编译后静态页面文件(public目录)推送到该仓库的hexo-melody-pages分支
  repo: git@github.com:Meloor/gh-blog.git # 注意是ssh方式
  branch: hexo-melody-pages
```
###  **3 一键部署脚本**
deployer.sh:
```sh
hexo clean 
hexo g
hexo d
```
hexo命令说明：
>hexo clean#清除
hexo generate # 生成静态网页
hexo server #本地启动服务
hexo deployer #部署到远程git仓库

执行sh脚本:
```sh
sh deployer.sh
```

>hexo deployer会推送打包目录(public)到远程仓库的部署分支(hexo-melody-pages)
![gh-pages](./readme/gh-pages.png)
 
 ###  **4 github action 自动部署**
>github pages设置好部署分支(hexo-melody-pages)后，只要接受到了该分支的推送，就会进行**自动部署**(**而gitee pages需要手动点击‘更新’**), 等待1-2分钟，进入页面就可以看到更新。
   ![gh-pages](./readme/github%20action.png)
## 3. md博客
图片最好放在同级目录的同名目录下，这样在本地编写md的预览和静态网页中的图片路径都能找到，图片都能正常显示