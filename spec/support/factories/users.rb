require 'factory_girl/syntax/sham'

Sham.login { |n| n }
Sham.email { |n| "#{n}@example.com" }

Factory.define :user do |f|
  f.name "Diego Carrion"
  f.email { Sham.email }
  f.password 'dcrec1'
end

Factory.define :approver_user, :parent => :user do |f|
  f.approver true
end
