require 'spec_helper'

describe PostsController do
  should_have_only_public_actions

  describe "GET index" do
    [:html, :rss].each do |format|
      it "should return 200 as the status code with #{format} format" do
        get :index, :format => format
        response.code.should eql("200")
      end

      it "should return only published posts" do
        3.times { Factory :post }
        2.times { Factory :published_post }
        get :index, :format => format
        assigns(:posts).size.should == Post.published.size
      end

      it "should paginate the posts" do
        (Post::PER_PAGE + 1).times { Factory :published_post }
        get :index, :page => 2
        assigns(:posts).size.should == 1
      end

      it "should order post from newest to oldest" do
        5.times { Factory :published_post }
        get :index, :format => format
        assigns(:posts).first.created_at.should > assigns(:posts).last.created_at
      end
    end

    it "should cache the page" do
      clear_cache
      (Post::PER_PAGE + 1).times { Factory :published_post }
      get :index, :page => 2
      File.exist?("#{CACHE_PATH}/posts/pages/2.html").should be_true
    end
  end

  describe "GET show" do
    let(:post) { Factory :post }

    it "should assign the post to @post" do
      get :show, :id => post.id
      assigns(:post).should == post
    end

    it "should cache the page" do
      clear_cache
      get :show, :id => post.id
      File.exist?("#{CACHE_PATH}/posts/#{post.id}.html").should be_true
    end
  end

  describe "GET by_tag" do
    it "should return all the published posts with the specific tag" do
      Factory :post, :tag_list => 'tag1'
      2.times {|i| Factory :published_post, :tag_list => "tag#{i}" }
      get :by_tag, :tag => 'tag1'
      assigns(:posts).size.should == 1
    end

    it "should return all published posts with the specific tag paginated" do
      (Post::PER_PAGE + 1).times { Factory :published_post, :tag_list => 'tag'}
      get :by_tag, :tag => 'tag', :page => 2
      assigns(:posts).size.should == 1
    end

    it "should assign the tag to @tag" do
      get :by_tag, :tag => "cool"
      assigns(:tag).should eql("cool")
    end
  end
end
