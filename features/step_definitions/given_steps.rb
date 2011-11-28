Given /^the Google Analytics code is "(.*)"$/ do |tracker_id|
  Themis::Config['google_analytics']['tracker_id'] = tracker_id   
end

Given /^the Get Clicky code is "(.*)"$/ do |tracker_id|
  Themis::Config['get_clicky']['tracker_id'] = tracker_id   
end

Given /^I am a logged admin$/ do
  user = Factory :admin, :password => 'password'
  visit new_admin_session_path
  fill_in 'Email', :with => user.email
  fill_in 'Password', :with => 'password'
  click_button 'Sign in'
end

Given /^I am a logged approver$/ do
  user = Factory :approver_user, :password => 'password'
  visit new_user_session_path
  fill_in 'Email', :with => user.email
  fill_in 'Password', :with => 'password'
  click_button 'Sign in'
end

Given /^I am logged in$/ do
  user = Factory(:user, :password => 'password')
  visit new_user_session_path
  fill_in 'Email', :with => user.email
  fill_in 'Password', :with => 'password'
  click_button 'Sign in'
end

Given /^the logged user has a post with title: "(.*)"$/ do |title|
  Factory(:post, :title => title, :author => User.last)
end
