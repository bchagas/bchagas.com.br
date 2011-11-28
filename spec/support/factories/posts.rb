# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :post do |f|
  f.title "MyString"
  f.body "MyText"
  f.association :author, :factory => :user
end

Factory.define :published_post, :parent => :post do |f|
  f.aasm_state 'published'
end
