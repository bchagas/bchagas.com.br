require 'spec_helper'

describe Panel::PostsController do
  include Devise::TestHelpers

  should_require_authentication

  let(:post_object) { Factory :post }

  context "with a logged user" do
    before :each do
      sign_in Factory(:user)
    end

    describe "POST create" do
      it "should create a post for the logged user" do
        post :create, :post =>  { :title => "Title", :body => "Body" }
        Post.first.author.should == controller.current_user
      end

      it "should not expire the blog index page cache" do
        file_name = "#{CACHE_PATH}/index.html"
        File.open file_name, 'w'
        post :create, :post =>  { :title => "Title", :body => "Body", :description => "Description of body"  }
        File.exist?(file_name).should be_true
      end

      it "should not expire the posts page cache" do
        path = "#{CACHE_PATH}/posts/pages"
        file_name = "#{path}/1.html"
        FileUtils.mkdir_p path
        File.open file_name, 'w'
        post :create, :post =>  { :title => "Title", :body => "Body" }
        File.exist?(file_name).should be_true
      end
    end

    describe "PUT update" do
      it "should not update the owner" do
        put :update, :id => post_object.id, :post => { :title => "Title", :body => "Body" }
        Post.last.author.should_not == controller.current_user
      end

      it "should expire the blog index page cache" do
        file_name = "#{CACHE_PATH}/index.html"
        File.open file_name, 'w'
        put :update, :id => post_object.id, :post => { :title => "Title", :body => "Body" }
        File.exist?(file_name).should be_false
      end

      it "should expire the sitemap.xml" do
        file_name = "#{CACHE_PATH}/sitemap.xml"
        File.open file_name, 'w'
        put :update, :id => post_object.id, :post => { :title => "Title", :body => "Body"  }
        File.exist?(file_name).should be_false
      end

      it "should expire the post page cache" do
        path = "#{CACHE_PATH}/posts/pages"
        file_name = "#{path}/1.html"
        FileUtils.mkdir_p path
        File.open file_name, 'w'
        put :update, :id => post_object.id, :post => { :title => "Title", :body => "Body" }
        File.exist?(file_name).should be_false
      end
    end

    describe "DELETE destroy" do
      it "should delete a post" do
        delete :destroy, :id => post_object.id
        Post.find_by_id(post_object.id).should be_nil
      end

      it "should expire the blog index page cache" do
        file_name = "#{CACHE_PATH}/index.html"
        File.open file_name, 'w'
        delete :destroy, :id => post_object.id
        File.exist?(file_name).should be_false
      end
    end

    describe "PUT publish" do
      it "should publish a post" do
        put :publish, :id => post_object.id
        Post.find(post_object.id).should be_published
      end

      it "should expire the blog index page cache" do
        file_name = "#{CACHE_PATH}/index.html"
        File.open file_name, 'w'
        put :publish, :id => post_object.id
        File.exist?("#{CACHE_PATH}/index.html").should be_false
      end
    end

    describe "POST preview" do
      it "should return an html" do
        post :preview, :data => "# Title #"
        response.body.should == "<h1>Title</h1>\n"
      end
    end
  end
end
