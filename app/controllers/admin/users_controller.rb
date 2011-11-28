class Admin::UsersController < InheritedResources::Base
  before_filter :authenticate_admin!

  update! do |success, failure|
    success.html { redirect_to admin_users_path }
  end

  create! do |success, failure|
    success.html { redirect_to admin_users_path }
  end
end
