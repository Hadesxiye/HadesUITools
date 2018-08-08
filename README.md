# HadesUITools
Second encapsulation of UI controls
对UI控件的二次封装，功能简单，使用便捷。

？为什么这么做
因为懒，本着能少写一行就少写一行的原则，后续还会完善。

使用：
  看头文件。
 
注意点：
  superAddsubview 暂时没找到oc中识别控件的方法或者解决方案，所以只能以字典加数组的形式传入UI控件。
  注意是 @"UIName":[NSArray arrayWithObjects:UIChild,nil] 的形式。
