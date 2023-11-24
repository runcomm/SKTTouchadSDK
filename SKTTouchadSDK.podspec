Pod::Spec.new do |spec|
  spec.name         = "SKTTouchadSDK"
  spec.version      = "1.1"
  spec.summary      = "A short description of SKTTouchadSDK."
  spec.description  = <<-DESC
TouchadSDK for SKT
                   DESC

  spec.homepage     = "https://github.com/runcomm/SKTTouchadSDK"

  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "runcomm" => "youdig@naver.com" }

  spec.platform     = :ios, "10.0"
  spec.ios.deployment_target = "10.0"
  spec.source       = { :git => "https://github.com/runcomm/SKTTouchadSDK.git", :tag => "#{spec.version}" }

  spec.vendored_framework = "TouchadSDK.xcframework/ios-arm64/TouchadSDK.framework"
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  spec.exclude_files = "Classes/Exclude"

end
