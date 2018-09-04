@version = "0.0.1"

Pod::Spec.new do |s|
s.name = "HadesUITools"
s.version = @version
s.summary = "UI控件的简单二次封装"
s.description = "第一版本测试版，支持UIButton，UILabel一键创建。superAddsubview支持UIView，UIImageview，UILabel，UIButton，UItextview，UItextfield"
s.homepage = "https://github.com/Hadesxiye/HadesUITools"
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.author = { "Wanghaozhen" => "471692847@qq.com" }
s.ios.deployment_target = '8.0'
s.source = { :git => "https://github.com/Hadesxiye/HadesUITools.git", :tag =>"0.0.1" }
s.source_files = "code"
s.requires_arc = true
s.framework = "UIKit"
end
