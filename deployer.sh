# push源码 
#repo: git@https://gitee.com/Meloor/blog.git  # 编译后静态文件的仓库URL 不是原码的URL
git push origin master
# 一键部署博客
#repo: git@gitee.com:Meloor/meloor.git # 注意是ssh方式
hexo clean 
hexo g
hexo d