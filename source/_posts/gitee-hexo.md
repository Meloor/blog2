---
title: gitee+hexo
top_img: img/1.jpg
date: 2020-11-11 17:59:15
tags: [gitee,hexo]
---
## 镇楼/斜眼笑
![图片](gitee-hexo/2.jpg)
<!-- ![图片](2.jpg)
![图片](gitee-hexo/meloor.jpg)
![图片](meloor.jpg) -->
## jekyll的不足
* gitee上使用jekyll效果完全和Github上不同，必须要在本地环境编译再push, 而github自带jekyll引擎，可以直接在github原码上直接修改 
* https://www.cnblogs.com/FLY_DREAM/p/13669729.html

## hexo
* 教程https://www.cnblogs.com/yizhixue-hx/p/12638361.html
###  hexo init卡住
 https://www.jianshu.com/p/a409601734f1
![图片](gitee-hexo/1.png)



 ```
hexo init blog
 ```
 换成, (下面npm换成cnpm更快)

 ```
git clone --depth 1 https://gitee.com/weilining/hexo-starter.git blog
cd blog
git submodule init
git submodule update
cnpm config set registry http://registry.npm.taobao.org
cnpm i
 ```

### hexo 插入图片
 https://www.jianshu.com/p/f72aaad7b852
 https://blog.csdn.net/xjm850552586/article/details/84101345
 
 修改后记得重新生成静态网页
 
 ```
 hexo clean
 hexo generate
 hexo server
 ```
 
 ### 生成ssh密钥
 https://blog.csdn.net/everything1209/article/details/53100263
 *无法识别ssh-keygen
https://blog.csdn.net/l508742729/article/details/97510883 

### 添加公钥位置
https://blog.csdn.net/soulwyb/article/details/90680676

### 自动更新
码云gitee搭建hexo博客，push上去之后，page为什么不能自动更新，得手动更新page？
gitee pages pro才支持自动更新
 

###  解决hexo本地与部署不一致问题
更新后如果除臭，一定要清楚浏览器缓存, 可能受之前url影响
https://blog.csdn.net/GAI159/article/details/105128186