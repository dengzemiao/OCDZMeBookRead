# OCDZMeBookRead
![Demo Swift Version](https://img.shields.io/badge/Swift-4.1-orange.svg)
![Xcode Version](https://img.shields.io/badge/Xcode-9.3-orange.svg)
![Author](https://img.shields.io/badge/Author-DZM-blue.svg)

****
#### 简介:

    OC项目集成以及使用DZMeBookRead
    
 ****   
#### 导入DZMeBookRead流程
    1.将DZMeBookRead项目中DZMeBookRead文件夹拖入OC项目
    
    2.将DZMeBookRead项目中Assets.xcassets文件内的图片拖入OC项目
    
    3.创建一个项目名称开头的桥接 "xxx-Bridging-Header.h" 例如: OCDZMeBookRead-Bridging-Header.h
    
    4.找到 Build Settings -> Swift Compiler General -> Objective-C Briging Header 加入桥接文件路径
    
    5.找到 Build Settings -> Swift Compiler Language -> 设置Swift语言版本（这里就是你使用的DZMeBookRead是Swift什么版本的）
    
    6.在info.plist中加入 View controller-based status bar appearance 设置为 NO （允许调整状态栏）
    
    7.混编头文件 #import "OCDZMeBookRead(你的项目名称)-Swift.h" 头文件导入
    
    8.command + shift + R  运行项目测试
    
    9.注意：想要在OC中使用Swift的方法或者属性 需要在方法或者属性名前面添加 @objc
        
        例如：
        
        DZMReadParser中的方法
        
        class func ParserLocalURL(url:URL,complete:((_ readModel:DZMReadModel) ->Void)?)
        
        你想要在OC中进行使用 需要在最前面添加 @objc
        
        @objc class func ParserLocalURL(url:URL,complete:((_ readModel:DZMReadModel) ->Void)?)
        
        再 command + shift + R
        
        可以调用了 属性也是一样
        
        例如: @objc var readModel:DZMReadModel!
        
        原本的DZMeBookRead是Swift代码 如果需要进混编且需要用到参数或者方法 需要自己进去源代码中加入 @objc 在进行使用
        
        作者已经为部分可能使用的到的方法或属性添加了 @objc ！！！
    
    
