require 'spec_helper'

describe ApplicationHelper do
  context "on #config" do
    it "should return the blog configuration" do
      configuration.should == Themis::Config    
    end
  end
end
