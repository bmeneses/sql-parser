$:.push File.expand_path('../lib', __FILE__)
require 'sql-parser/version'

Gem::Specification.new do |s|
  
  s.name        = 'sql-parser'
  s.version     = %Q[#{SQLParser::VERSION}.#{ENV['BUILD_NUMBER'] || `hostname`.strip}]
  s.authors     = ['Dray Lacy', 'Louis Mullie']
  s.email       = ['dray@izea.com', 'louis.mullie@gmail.com']
  s.homepage    = 'https://github.com/louismullie/sql-parser'
  s.summary     = %q{ Ruby library for parsing and generating SQL statements }
  s.description = %q{ A Racc-based Ruby parser and generator for SQL statements }

  s.files = Dir.glob('lib/**/*')
  
  s.add_runtime_dependency 'racc', '~> 1.4'
  s.add_runtime_dependency 'rexical', '~> 1'

  s.add_development_dependency 'rspec', '~> 0'
  s.add_development_dependency 'rake', '~> 0'
  s.add_development_dependency 'geminabox_client', '~> 0'
  s.add_development_dependency 'pry-byebug'
  
end
