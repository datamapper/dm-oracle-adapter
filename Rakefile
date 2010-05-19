require 'rubygems'
require 'rake'

begin

  require 'jeweler'

  Jeweler::Tasks.new do |gem|
    gem.name        = 'dm-oracle-adapter'
    gem.summary     = 'Oracle Adapter for DataMapper'
    gem.description = gem.summary
    gem.authors     = ["Dan Kubb"]
    gem.email       = %q{dan.kubb@gmail.com}
    gem.homepage    = 'http://github.com/datamapper/dm-oracle-adapter'

    gem.add_dependency 'do_oracle',         '~> 0.10.1'
    gem.add_dependency 'dm-do-adapter',     '~> 1.0.0.rc1'

    gem.add_development_dependency 'rspec', '~> 1.3'
  end

  Jeweler::GemcutterTasks.new

  FileList['tasks/**/*.rake'].each { |task| import task }
rescue LoadError
  puts 'Jeweler (or a dependency) not available. Install it with: gem install jeweler'
end
