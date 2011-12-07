source 'http://rubygems.org'

gem 'rails', '3.1.3'
gem "json", "~> 1.6.3"
gem 'mysql2'

group :assets do
  gem 'coffee-script'
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'therubyracer'
gem 'json_pure', '>=1.4.6'
gem 'haml', '3.1.3'
gem 'haml-rails', '>= 0.3.4'
gem 'inherited_resources', '>=1.2.1'
gem 'will_paginate', '>=3.0.pre'
gem 'devise', '~> 1.4.7'
gem 'formtastic', '>=1.2.3'
gem 'friendly_id', '~>3.2.1'
gem 'disqus', '>=1.0.4'
gem 'rdiscount', '>= 1.6.8'
gem 'acts-as-taggable-on', '>= 2.0.6'
gem 'aasm'
gem 'metric_fu'
gem 'sass-rails'

gem 'compass', '~> 0.12.alpha'
gem 'jquery-rails'

gem 'hoptoad_notifier'



group :development do
  gem 'rails3-generators', :git => 'git://github.com/indirect/rails3-generators.git'
  gem 'faker'
	gem 'net-ssh'
end


group :test do
  gem 'capybara', '~> 1.1.1'
  gem 'database_cleaner', '~> 0.6.7'
  gem 'rspec', '~> 2.6.0'
  gem 'shoulda-matchers'
  gem 'spork', '~> 0.9.0.rc'
end

group :development, :test do
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'sqlite3'
  gem 'shoulda'
end

group :production do
  gem 'unicorn'
  gem 'newrelic_rpm', '>=2.13.0.beta5'
end
