
Pod::Spec.new do |s|
  s.name             = 'YohooRouter'
  s.version          = '0.1.0'
  s.summary          = 'YohooRouter.'

  s.description      = 'YohooRouter is router for ios'

  s.homepage         = 'https://github.com/fyfdayan/YohooRouter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fyfdayan' => 'bird@corplus.net' }
  s.source           = { :git => 'https://github.com/fyfdayan/YohooRouter.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'YohooRouter/Classes/**'

  s.public_header_files = 'YohooRouter/Classes/**/*.h'
end
