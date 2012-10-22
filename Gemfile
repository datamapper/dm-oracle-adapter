require 'pathname'

source 'http://rubygems.org'

SOURCE         = ENV.fetch('SOURCE', :git).to_sym
REPO_POSTFIX   = SOURCE == :path ? ''                                : '.git'
DATAMAPPER     = SOURCE == :path ? Pathname(__FILE__).dirname.parent : 'http://github.com/datamapper'
DM_VERSION     = '~> 1.2.0'
DO_VERSION     = '~> 0.10.6'
CURRENT_BRANCH = ENV.fetch('GIT_BRANCH', 'master')

do_options = {}
do_options[:git] = "#{DATAMAPPER}/do#{REPO_POSTFIX}" if ENV['DO_GIT'] == 'true'

gem 'do_oracle',     DO_VERSION, do_options.dup
gem 'dm-do-adapter', DM_VERSION


platforms :mri_18 do
  group :quality do

    gem 'rcov',      '~> 0.9.9'
    gem 'yard',      '~> 0.6'
    gem 'yardstick', '~> 0.2'

  end
end

group :datamapper do

  gem 'dm-core', DM_VERSION

  gem 'data_objects', DO_VERSION, do_options.dup

end
