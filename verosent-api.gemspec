require_relative 'lib/version'

Gem::Specification.new do |s|
  s.name        = 'verosent-api'
  s.version     = VerosentAPI::VERSION
  s.date        = VerosentAPI::RELEASE_DATE
  s.summary     = 'Verosent API library'
  s.description = 'A library to communicate with the Verosent API server.'
  s.authors     = ['Manuel Schnitzer']
  s.email       = 'manuel.schnitzer@verosent.com'
  s.homepage    = 'https://github.com/verosent/verosent-api-ruby'
  s.license     = 'MIT'

  s.files       = Dir[
    'lib/**/*.rb',
    '*.md'
  ]

  s.add_dependency 'json', '~> 2.1', '>= 2.1.0'
end