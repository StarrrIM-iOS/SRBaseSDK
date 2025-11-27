Pod::Spec.new do |s|
  s.name             = 'SRUtil'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SRUtil.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Apple-523/SRUtil'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Apple-523' => 'wenmingyan_work@126.com' }
  s.source           = { :git => 'https://github.com/Apple-523/SRUtil.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '15.0'

  s.source_files = 'SRUtil/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SRUtil' => ['SRUtil/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'SwiftyJSON'
  s.dependency 'HandyJSON'
  
  
end
