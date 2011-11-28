# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

MetricFu::Configuration.run do |config|
  config.rcov[:rcov_opts] << "-Ispec"
end

Themis::Application.load_tasks
