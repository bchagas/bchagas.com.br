namespace :db do
  desc "Bootstraps the database with demo data"
  task :bootstrap => %w(db:setup) do
    I18n.locale = :en
    Admin.create! :email => "admin@themis.com", :password => "abc123"
    user = User.create! :name => "Chuck Norris", :email => "chuck@themis.com", :password => "abc123"
    15.times { Post.create!(:title => Faker::Lorem.sentence, :body => Faker::Lorem.paragraphs, :description => Faker::Lorem.paragraphs, :author => user).publish! }
  end
end
