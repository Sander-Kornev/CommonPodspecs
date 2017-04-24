# Regarding https://github.com/CocoaPods/CocoaPods/issues/6409

Pod::Spec.new do |s|
  s.name             = 'WrapperSampleAtlas'
  s.version          = '0.0.2' # just a different number to avoid confusion with the other podspec
  s.summary          = 'WrapperSampleAtlas. Cool Story bro!'

  s.description      = <<-DESC
Wrapper Around Sample Dynamic Lib Pod Blah Blah Blah Blah Blah Blah Blah Blah
                       DESC

  s.homepage         = 'https://github.com/crsantos/SameRepoForAllPodSpecsAndSource'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Carlos Santos' => 'mail@example.com' }
  s.source           = { :git => 'https://github.com/Sander-Kornev/CommonPodspecs.git', :tag => "#{s.name}-#{s.version.to_s}" }

  # Dont't forget to tag your repo with `WrapperAroundSampleDynamicLibPod-0.0.2` for this specific spec

  s.module_name      = 'WrapperSampleAtlas'

  s.ios.deployment_target = '9.0'
  s.platform = :ios, '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }

  s.source_files = 'Classes/**/*'

  s.dependency 'SampleAtlas', '0.0.1' 
end