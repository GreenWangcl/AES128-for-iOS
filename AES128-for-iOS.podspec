Pod::Spec.new do |s|
  s.name     = 'AES128-for-iOS'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'Encrypt and Decrypt AES128 for iOS'
  s.homepage = 'https://github.com/GreenWangcl/AES128-for-iOS'
  s.author   = { 'Green Wang' => 'greenwangcl@gmail.com' }
  s.source   = { :git => 'https://github.com/GreenWangcl/AES128-for-iOS.git', :tag => '1.0.0' }
  s.platform = :ios
  s.requires_arc = true
  s.source_files = 'ASE128Demo/ASE128'
  s.clean_paths  = "ASE128Demo.xcodeproj"
end
