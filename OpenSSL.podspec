Pod::Spec.new do |s|
  s.name         = "OpenSSL"
  s.version      = "1.0.1f"
  s.summary      = "Pre-built OpenSSL for iOS."
  s.description  = <<-DESC
	Supports i386, x86_64, armv7, armv7s, armv64.
                    DESC
  s.homepage     = "https://github.com/hongrich/OpenSSL-for-iPhone"
  s.license	 = 'OpenSSL (OpenSSL/SSLeay)'

  s.author       = { 'Rich Hong' => 'hong.rich@gmail.com' }
  s.source       = { :git => "https://github.com/hongrich/OpenSSL-for-iPhone.git", :tag => "openssl-1.0.1f" }

  s.platform     = :ios
  s.source_files = 'include/openssl/**/*.h'
  s.public_header_files = 'include/openssl/**/.h'
  s.preserve_paths = 'lib/**/*.a'
  s.library	  = 'crypto', 'ssl'
  s.xcconfig	 = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/OpenSSL/lib"' }
end
