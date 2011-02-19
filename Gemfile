require 'pathname'

source 'http://rubygems.org'

SOURCE       = ENV['SOURCE']   ? ENV['SOURCE'].to_sym              : :git
REPO_POSTFIX = SOURCE == :path ? ''                                : '.git'
DATAMAPPER   = SOURCE == :path ? Pathname(__FILE__).dirname.parent : 'http://github.com/datamapper'
DM_VERSION   = '~> 1.0.2'
DO_VERSION   = '~> 0.10.2'

do_options = {}
do_options[:git] = "#{DATAMAPPER}/do#{REPO_POSTFIX}" if ENV['DO_GIT'] == 'true'

group :runtime do # Runtime dependencies (as in the gemspec)

  gem 'do_oracle',       DO_VERSION, do_options.dup
  gem 'dm-do-adapter',   DM_VERSION, SOURCE => "#{DATAMAPPER}/dm-do-adapter#{REPO_POSTFIX}"

end

group(:development) do # Development dependencies (as in the gemspec)

  gem 'dm-migrations',   DM_VERSION, SOURCE => "#{DATAMAPPER}/dm-migrations#{REPO_POSTFIX}"

  gem 'rake',            '~> 0.8.7'
  gem 'rspec',           '~> 1.3.1'
  gem 'jeweler',         '~> 1.5.2'

end

group :datamapper do # We need this because we want to pin these dependencies to their git master sources

  if ENV['EXTLIB']
    gem 'extlib',        '~> 0.9.15', SOURCE => "#{DATAMAPPER}/extlib#{REPO_POSTFIX}", :require => nil
  else
    gem 'activesupport', '~> 3.0.4', :require => nil
  end

  gem 'dm-core',         DM_VERSION, SOURCE => "#{DATAMAPPER}/dm-core#{REPO_POSTFIX}"
  gem 'data_objects',    DO_VERSION, do_options.dup

  plugins = ENV['PLUGINS'] || ENV['PLUGIN']
  plugins = plugins.to_s.tr(',', ' ').split.push('dm-migrations').uniq

  plugins.each do |plugin|
    gem plugin, DM_VERSION, SOURCE => "#{DATAMAPPER}/#{plugin}#{REPO_POSTFIX}"
  end

end

group :quality do # These gems contain rake tasks that check the quality of the source code

  gem 'rcov',            '~> 0.9.7', :platforms => :mri_18
  gem 'yard',            '~> 0.5'
  gem 'yardstick',       '~> 0.1'

end
