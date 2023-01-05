Gem::Specification.new do |s|
  s.name = 'thing_space_connectivity_management_api'
  s.version = '5.12.0'
  s.summary = 'thing_space_connectivity_management_api'
  s.description = 'The ThingSpace Connectivity Management API allows you to add and activate devices, check their status, monitor their usage, monitor their reachability for Data and SMS communication as well as their connection status, and perform other device connectivity management tasks through a RESTful API. You can use the API to add connectivity management to anything from small apps to enterprise software systems, such as enterprise resource planning (ERP), supply chain management and customer service management. The API provides a secure, standards-compliant REST interface to the web services at the ThingSpace Data Center. You can download the <a href="/content/dam/thingspace-portal/resources/documentation/swagger/m2m-all.json" download = "Connectivity_Management.json">JSON file here</a>.'
  s.authors = ['APIMatic SDK Generator',]
  s.email = ['support@apimatic.io',]
  s.homepage = 'https://apimatic.io'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.3')
  s.add_dependency('faraday', '~> 2.0', '>= 2.0.1')
  s.add_dependency('faraday-follow_redirects', '~> 0.2')
  s.add_dependency('faraday-multipart', '~> 1.0')
  s.add_dependency('faraday-gzip', '~> 0.1')
  s.add_dependency('faraday-retry', '~> 1.0')
  s.add_dependency('faraday-net_http_persistent', '~> 2.0')
  s.add_dependency('certifi', '~> 2018.1', '>= 2018.01.18')
  s.add_dependency('faraday-http-cache', '~> 2.2')
  s.add_development_dependency('minitest', '~> 5.14', '>= 5.14.1')
  s.add_development_dependency('minitest-proveit', '~> 1.0')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
