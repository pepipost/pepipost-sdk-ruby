Gem::Specification.new do |s|
  s.name = 'pepipost'
  s.version = '5.0.0'
  s.summary = 'pepipost'
  s.description = 'Pepipost is a cloud-based SMTP relay service that delivers highly personalised transactional emails to the inbox within seconds of your customer’s transaction'
  s.authors = ['APIMatic SDK Generator']
  s.email = 'helpdesk@pepipost.com'
  s.homepage = 'https://apimatic.io'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.0')
  s.add_dependency('faraday', '~> 0.10')
  s.add_dependency('faraday_middleware', '~> 0.13.1')
  s.add_dependency('test-unit', '~> 3.1', '>= 3.1.5')
  s.add_dependency('certifi', '~> 2016')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
