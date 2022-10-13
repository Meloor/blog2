

### **本地安装node环境**
wsl2安装nvm:
>curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source .zshrc # 运行后nvm命令才可以使用

nvm安装node:
>nvm install stable
nvm install 12
nvm uninstall <version>
nvm ls #列出所有安装的版本
nvm ls-remote
nvm current # 显示当前版本
nvm reinstall-packages <version>
nvm use <version>
nvm use 18
nvm use 12

yarn安装：
>npm install --global yarn
yarn --version

yarn命令与npm命令对比
>npm install === yarn 
npm install taco --save === yarn add taco 
npm uninstall taco --save === yarn remove taco 
npm install taco --save-dev === yarn add taco --dev 
npm update --save === yarn upgrade

yarn基本命令:
>yarn add 包名 -D #会记录在 package.json 的 devDependencies开发环境中
yarn global add xxx #全局安装
yarn list # 列出当前项目的依赖