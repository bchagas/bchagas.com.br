require 'spec_helper'

describe ApplicationController do
  context "on #sitemap" do
    it "should cache the page" do
      clear_cache
      get :sitemap, :format => :xml
      File.exist?("#{CACHE_PATH}/sitemap.xml").should be_true
    end
  end
end
