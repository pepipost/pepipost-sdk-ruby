Gem::Specification.new do |s| 
  s.name = 'pepipost_sdk_ruby'
  s.version = '1.0.0'
  s.summary = 'pepipost_sdk_ruby'
  s.description = 'This is the Official Pepipost SDK for Ruby'
  s.authors = ['Tabrez Shaikh']
  s.email = 'tabrez@pepipost.com'
  s.homepage = 'http://pepipost.com/'
  s.license = 'MIT'
  s.add_dependency('unirest', '~> 1.1.2')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
