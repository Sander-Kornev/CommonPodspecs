# Regarding https://github.com/CocoaPods/CocoaPods/issues/6409
Pod::Spec.new do |s|
  s.name             = 'SampleAtlas'
  s.version          = '0.0.1'
  s.summary          = 'SampleAtlas. Cool Story bro!'

  s.description      = <<-DESC
Blah Blah Blah Blah Blah description
                       DESC

  s.homepage         = 'https://github.com/crsantos/SameRepoForAllPodSpecsAndSource'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Carlos Santos' => 'mail@example.com' }
  s.source           = { :git => 'https://github.com/Sander-Kornev/CommonPodspecs.git', :tag => "#{s.name}-#{s.version.to_s}" }
  # this is the way of tagging diferent podspecs on the same repo
  # Dont't forget to tag your repo with `SampleDynamicLibPod-0.0.1` for this specific spec

  s.module_name      = 'SampleAtlas'
  
  s.ios.deployment_target = '9.0'
  s.platform = :ios, '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }

  s.vendored_frameworks = 'IndoorAtlas.framework'
end