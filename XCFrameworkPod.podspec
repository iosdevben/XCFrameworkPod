Pod::Spec.new do |spec|
  spec.name = "XCFrameworkPod"
  spec.version = "0.0.1"
  spec.summary = "A short description of #{spec.name}."

  spec.description = <<-DESC
                     A test
                     DESC

  spec.author = "Ben Thomas"
  spec.license = 'MIT'
  spec.homepage = "http://github.com/iosdevben/#{spec.name}"

  spec.platform = :ios, "14.0"

  spec.source = { :http => "https://github.com/iosdevben/XCFrameworkPod/releases/download/#{spec.version}/XCFrameworkPod.zip" }
  spec.vendored_frameworks = "#{spec.name}.xcframework"
end
