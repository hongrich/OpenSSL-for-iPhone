Pod::Spec.new do |s|
  s.name         = "OpenSSL"
  s.version      = "1.0.1e"
  s.summary      = "Pre-built OpenSSL for iOS."
  s.description  = <<-DESC
	Supports iPhone Simulator, armv7 and armv7s.
                    DESC
  s.homepage     = "https://github.com/hongrich/OpenSSL-for-iPhone"
  s.license	 = 'OpenSSL (OpenSSL/SSLeay)'

  s.author       = { 'Rich Hong' => 'hong.rich@gmail.com' }
  s.source       = { :git => "https://github.com/hongrich/OpenSSL-for-iPhone.git", :tag => "openssl-1.0.1e" }

  s.platform     = :ios, '7.0'
  s.source_files = 'include/openssl/**/*.h'
  s.public_header_files = 'include/openssl/**/.h'
  s.preserve_paths = 'lib/**/*.a'
  s.library	  = 'crypto', 'ssl'
  s.xcconfig	 = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/OpenSSL/lib"' }
end
