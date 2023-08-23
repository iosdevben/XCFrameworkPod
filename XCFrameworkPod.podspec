#
#  Be sure to run `pod spec lint XCFrameworkPod.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name = "XCFrameworkPod"
  spec.version = "0.0.1"
  spec.summary = "A short description of #{spec.name}."

  spec.description = <<-DESC
                     A test
                     DESC

  spec.author = "Ben Thomas"
  spec.license = "MIT"
  spec.homepage = "http://github.com/iosdevben/#{spec.name}"

  spec.platform = :ios, "14.0"

  spec.source = { :git => "https://github.com/iosdevben/#{spec.name}.git", :tag => "#{spec.version}" }
  spec.vendored_frameworks = "#{spec.name}.xcframework"
end
