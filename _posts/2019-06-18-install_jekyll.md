---
layout: post
title: windows安装jekyll的过程及遇到的问题
subtitle: 博客搭建
author: Meloor
---
前端大作业要设计一个静态网页，写博客对于程序员来说是一很好的提升方式，于是想到做一个个人博客。网上查了很多教程，最后决定用github+jekyll来搭建博客。前前后后折腾了5个小时，终于把jekyll安装完毕。下面直接上教程：

参考博客：

[博客一](https://blog.csdn.net/mouday/article/details/79300135)

[博客二](https://segmentfault.com/q/1010000013418668/a-1020000013529937)

[博客三](https://blog.csdn.net/w2i0l1l5y/article/details/82662224)

国内镜像[官网](https://gems.ruby-china.com/)

首先下载ruby
rubyinstall[官网](https://rubyinstaller.org/downloads/)

-----------------

## 1.安装ruby
双击运行文件rubyinstaller-2.2.3-x64exe，我这里用的是64位。安装的时候注意勾选把ruby添加到路径PATH。建议安装在C盘，以避免不必要的问题

## 2.安装devkit
官网下载 DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe，翻到最后可以找到下面的页面。

### a)解压
运行 DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe文件，解压到C盘
	`C:/Devkit`
	
### b)初始化
cmd中cd到C:/Devkit目录下执行下面命令
	`ruby dk.rb init`
生成config.yml，这里会检查将要添加DevKit支持的Ruby列表，只支持通过RubyInstaller安装的Ruby
如果这里列出的Ruby与你的要求不符，可以手动修改

### c)安装
	`ruby dk.rb review`  
检查要添加DevKit支持的Ruby列表是否有误，可以略过
	`ruby dk.rb install`

### d)检查是否安装成功
	`> gem install rdiscount --platform=ruby`

## 3.安装rubygems
官网地址：https://rubygems.org/pages/download
解压后拷贝到C盘，cd到`C:\rubygems-3.0.3`目录下
安装，
	`ruby setup.rb`

## 4.更改源

### a)移除原来的
	`C:\Devkit>gem sources  --remove https://rubygems.org`
	
### b)添加国内镜像
`C:\Devkit>gem sources --add http://gems.ruby-china.com/
`source http://gems.ruby-china.com/ already present in the cache``

## 5.安装jekyll
cd到C:\rubygems-3.0.3目录下
	`gem install jekyll`
	
