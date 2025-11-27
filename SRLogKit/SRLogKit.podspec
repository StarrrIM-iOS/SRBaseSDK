#
# Be sure to run `pod lib lint SRLogKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SRLogKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SRLogKit.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Apple-523/SRLogKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Apple-523' => 'wenmingyan_work@126.com' }
  s.source           = { :git => 'https://github.com/Apple-523/SRLogKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '15.0'

  s.source_files = 'SRLogKit/Classes/**/*'
  s.dependency 'SwiftyBeaver'
  
end
