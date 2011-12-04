source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
	gem 'sass-rails', '~> 3.1.5'
	gem 'coffee-rails', '~> 3.1.1'
	gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'



# -----------------------------------------------
# Apps
# -----------------------------------------------

gem 'json_pure', '>=1.4.6'
gem 'rails_admin', :git => 'git://github.com/sferik/rails_admin.git'
gem 'haml', '3.1.3'
gem 'haml-rails', '>= 0.3.4'
gem 'inherited_resources', '>=1.2.1'
gem 'will_paginate', '>=3.0.pre'
gem 'devise', '>=1.2.rc2'
gem 'devise_ldap_authenticatable', '>=0.4.1.1'
gem 'formtastic', '>=1.2.3'
gem 'friendly_id', '~>3.2.1'
gem 'disqus', '>=1.0.4'
gem 'rdiscount', '>= 1.6.8'
gem 'acts-as-taggable-on', '>= 2.0.6'
gem 'aasm', :git => 'git://github.com/rubyist/aasm.git'
gem 'metric_fu'

gem 'compass', '~> 0.12.alpha'
#gem 'compass', git: 'git://github.com/chriseppstein/compass', :branch => 'master'
gem 'jquery-rails'

gem 'hoptoad_notifier'    # Production only ?



group :development do
	gem 'rails3-generators', :git => 'git://github.com/indirect/rails3-generators.git'
	gem 'faker'
	# gem 'autotest'
	# gem 'autotest-notification'
end


group :test do
	gem 'rspec'
	gem 'remarkable', '>=4.0.0.alpha4'
	gem 'remarkable_activemodel', '>=4.0.0.alpha4'
	gem 'remarkable_activerecord', '>=4.0.0.alpha4'
	# Pretty printed test output
	gem 'turn', '0.8.2', :require => false
end


group :cucumber do
	gem 'cucumber', '>=0.9.4'
	gem 'cucumber-rails', '>=0.3.2'
	gem 'capybara', '>=0.3.9'
	gem 'database_cleaner', '>=0.5.0'
	gem 'spork', '>=0.8.4'
	gem 'pickle', '>=0.4.2'
	gem 'launchy'
	gem 'akephalos'
end


group :development, :test do
	gem 'ruby-debug19', :require => 'ruby-debug'
	gem 'sqlite3'
	# gem 'sqlite3-ruby', :require => 'sqlite3'
	gem 'shoulda'
	# gem 'shoulda-matchers'
end


group :development, :test, :cucumber  do
	gem 'rspec-rails', '>=2.5.0'
	gem 'factory_girl_rails'
end


group :production do
	gem 'mysql2'
	gem 'unicorn'
	gem 'newrelic_rpm', '>=2.13.0.beta5'
end


