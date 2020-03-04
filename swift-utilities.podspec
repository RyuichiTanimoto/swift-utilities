Pod::Spec.new do |s|
  s.name         = "swift-utilities"
  s.version      = "0.2.1"
  s.swift_versions = "4.2"
  s.summary      = "A collection of extensions in swift."
  s.description  = <<-DESC
A collection of extensions in swift.
Try!
                   DESC
  s.homepage     = "https://github.com/RyuichiTanimoto/swift-utilities"
  s.screenshots  = ""
  s.license      = { :type => "GPL", :file => "LICENSE" }
  s.author             = { "ryuichi" => "loyd.ryut@gmail.com" }
  #s.social_media_url   = ""
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "#{s.homepage}.git", :tag => "#{s.version}" }
  s.source_files  = "swift-utilities", "swift-utilities/**/*.swift"
  s.exclude_files = "swift-utilities/Exclude"
  #s.public_header_files = ""
  #s.resources = ""
  #s.preserve_paths = ""
  #s.frameworks = ""
  #s.libraries = ""
  s.requires_arc = true
  s.xcconfig = {
    'SWIFT_VERSION' => '4.2'
  }
  #s.dependency ""
end
