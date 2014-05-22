require File.expand_path('../lib/opener/coreference/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "opener-coreference"
  gem.version     = Opener::Coreference::VERSION
  gem.authors     = ["development@olery.com"]
  gem.summary     = "Gem that wraps the coreference code"
  gem.description = gem.summary

  gem.has_rdoc              = "yard"
  gem.required_ruby_version = ">= 1.9.2"

  gem.files = Dir.glob([
    'lib/**/*',
    'config.ru',
    '*.gemspec',
    'README.md',
    'exec/**/*'
  ]).select { |file| File.file?(file) }

  gem.executables = Dir.glob('bin/*').map { |file| File.basename(file) }

  gem.add_dependency 'sinatra', '~> 1.4'
  gem.add_dependency 'httpclient'
  gem.add_dependency 'nokogiri'
  gem.add_dependency 'opener-coreference-base'
  gem.add_dependency 'opener-webservice'
  gem.add_dependency 'puma'
  gem.add_dependency 'opener-daemons'
  gem.add_dependency 'opener-core', ['>= 0.1.2']

  gem.add_development_dependency "rake"
end
