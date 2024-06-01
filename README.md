# MainProject
app主工程

## 1.创建 私有索引库
github 创建 私有索引库的repository
https://github.com/WDModulization/WD_PodSpecs.git

## 2.添加到本地repo
pod repo   查看本地有哪些repo库
pod repo add  WD_PodSpecs https://github.com/WDModulization/WD_PodSpecs.git  把自己的索引库添加到本地repo
（这里最好使用https地址，使用ssh地址也行，只是在podfile里如果制定的source是https的地址，那么pod repo list就会又多一个https的repo，相当于本地有两个相同的repo，混乱）

## 3.创建私有pod工程模版
本地创建私有pod库工程   pod lib create Business_A
本地pod库写完代码后上传到github

## 4.版本发布
github创建私有pod的repository      https://github.com/WDModulization/Business_A.git

编辑.podspec配置文件

进入pod库的根目录
cd /Users/admin/Business_A
添加远程仓库
$ git remote add origin  https://github.com/WDModulization/Business_A.git
添加到缓存
$ git add .
提交到本地仓库
$ git commit -m "first commit"
推送到远程
$ git push -u origin main
添加标签
$ git tag 0.1.0
推送标签到远程
$ git push --tags

## 5.验证
验证pod库
pod lib lint --allow-warnings 

验证spec配置文件
pod spec lint --allow-warnings 

例如：pod spec lint ./Business_A.podspec --allow-warnings  —verbose —sources='https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git'


注意：
//如果dependency三方pod库，需要指定三方pod库的repo索引库
--sources='https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git,https://github.com/WDModulization/WD_PodSpecs.git’ 
//忽略警告
--allow-warnings 
//定位错误
—verbose
//使用libraries和frameworks
--use-libraries 


## 6.上传到索引库
pod repo push <索引库名>  <.podspec文件名> --allow-warnings 
例如：pod repo push WD_PodSpecs  ./Business_A.podspec --allow-warnings —verbose 


## 7.主工程引入远程私有库

方式一
pod ‘Business_A’, git: ‘https://github.com/WDModulization/Business_A.git’

方式二
// podfile 顶部声明repo源
source ‘https://github.com/WDModulization/WD_PodSpecs.git’
// 从声明的源中自动查找
pod ‘Business_A’



####
[iOS CocoaPods私有库的创建和版本更新](https://www.jianshu.com/p/51b0aed5db2a)

[podspec私有库配置](https://blog.csdn.net/z119901214/article/details/90241251)
