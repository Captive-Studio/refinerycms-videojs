# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = %q{refinerycms-embed}
  s.version           = %q{0.5.6}
  s.summary           = %q{Embed extension for Refinery CMS}
  s.description       = %q{Manage embeds in RefineryCMS.}
  s.email             = %q{web@captive.fr}
  s.homepage          = %q{http://www.captive.fr}
  s.authors           = ['Captive Studio']
  s.license           = %q{MIT}
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"]

  s.add_dependency 'dragonfly'
  s.add_dependency 'rack-cache'
  s.add_dependency 'refinerycms-core',    '~> 4.0.0'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 4.0.0'
end
