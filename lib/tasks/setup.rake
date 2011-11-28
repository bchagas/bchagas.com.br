namespace :admin do
  desc "creates an admin account with email = (ENV['email'] or admin@themis.com) and password = (ENV['password'] or themis)"
  task :create => :environment do
    email = ENV.fetch 'email', 'admin@themis.com'
    password = ENV.fetch 'password', 'themis'
    Admin.create! :email => email, :password => password
  end
end
