#
# Be sure to run `pod lib lint MTHome.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MTHome'
  s.version          = '0.1.5'
  s.summary          = 'A short description of MTHome.'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
  s.description      = <<-DESC
  TODO: Add long description of the pod here.
  DESC
  
  s.homepage         = 'https://github.com/MTModule/MTHome.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '33cun' => 'xiaoxin@evrazlabs.email' }
  s.source           = { :git => 'https://github.com/MTModule/MTHome.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '8.0'
  
  s.source_files = 'MTHome/Classes/**/Target_Home.{h,m}'
  
  s.subspec 'UI' do |ui|
    ui.source_files = 'MTHome/Classes/UI/**/*'
  end
  
  s.subspec 'Data' do |data|
    data.source_files = 'MTHome/Classes/Data/**/*'
  end
  
  s.subspec 'Service' do |service|
    service.source_files = 'MTHome/Classes/Service/**/*'
  end
  
  # s.resource_bundles = {
  #   'MTHome' => ['MTHome/Assets/*.png']
  # }
  
  s.public_header_files = 'MTMine/Classes/Target_Home.h'             # 公开头文件地址
  s.frameworks = 'UIKit'
  s.dependency 'Masonry'
  s.dependency 'CTMediator'
  
end
