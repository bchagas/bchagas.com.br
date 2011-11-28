When /^I visit "([^"]*)"$/ do |path|
  visit path
end

When /^I visit the panel/ do
  visit panel_path
end

When /^I fill the new user form$/ do
  When %{I fill in "Name" with "Ricardo"}
  When %{I fill in "Email" with "ricardo@gonow.com.br"}
  When %{I fill in "Password" with "password"}
  When %{I fill in "Password confirmation" with "password"}
end

When /^I approve the post$/ do
  When %{I go to the post edition path}
  click 'Approve'
end

When /^I click to edit the first item$/ do
  find("a.edit:first").click
end

When /^I click to destroy the first item$/ do
  find("a.destroy:first").click
end

When /^I fill the post form$/ do
  When %{I fill in "Title" with "My post"}
  When %{I fill in "Body" with "My test post"}
  When %{I fill in "Description" with "My description of test post"}
  When %{I fill in "Tag list" with "test, general"}
end
