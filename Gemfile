source "http://rubygems.org"

gem "rails", "=3.0.6"

gem "json_pure", "=1.4.6"

gem "sqlite3-ruby", :require => "sqlite3", :group => [:development, :test]
gem "hoptoad_notifier"
gem "rails_admin", :git => 'git://github.com/sferik/rails_admin.git'
gem "haml", ">=3.0.25"
gem "haml-rails", ">= 0.3.4"
gem "inherited_resources", ">=1.2.1"
gem "will_paginate", ">=3.0.pre"
gem "devise", ">=1.2.rc2"
gem "devise_ldap_authenticatable", ">=0.4.1.1"
gem "formtastic", ">=1.2.3"
gem "friendly_id", "~>3.2.1"
gem "compass", "~> 0.12.alpha"
gem "disqus", ">=1.0.4"
gem "rdiscount", ">= 1.6.8"
gem "acts-as-taggable-on", ">= 2.0.6"
gem "aasm", :git => "git://github.com/rubyist/aasm.git"
gem "metric_fu"

group :development do
  gem "faker"
end

group :production do
  gem "mysql2"
  gem 'newrelic_rpm', '>=2.13.0.beta5'
end

group :test do
  gem "rspec-rails", ">=2.5.0"
  gem "remarkable", ">=4.0.0.alpha4"
  gem "remarkable_activemodel", ">=4.0.0.alpha4"
  gem "remarkable_activerecord", ">=4.0.0.alpha4"
  gem "factory_girl_rails"
end

group :cucumber do
  gem "cucumber", ">=0.9.4"
  gem "cucumber-rails", ">=0.3.2"
  gem "capybara", "=0.3.9"
  gem "database_cleaner", ">=0.5.0"
  gem "spork", ">=0.8.4"
  gem "pickle", ">=0.4.2"
  gem "launchy"
  gem "akephalos"
end

gem "inploy", ">=1.9"
