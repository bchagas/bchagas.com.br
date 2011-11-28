# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :admin do |f|
  f.email { Sham.email }
  f.password 'abc123'
end
