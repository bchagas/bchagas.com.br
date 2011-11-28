require 'spec_helper'

describe User do
  should_have_many :posts
  should_validate_presence_of :name

  it "should accept a name on creation" do
    User.new(:name => "Diego").name.should eql("Diego")
  end
end
