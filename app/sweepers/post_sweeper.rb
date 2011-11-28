class PostSweeper < ActionController::Caching::Sweeper
  observe Post

  def after_update(post)
    expire_cache post
  end

  def after_destroy(post)
    expire_cache post
  end

  protected

  def expire_cache(post)
    [root_path, sitemap_path(:format => :xml), post_path(post)].each do |path|
      expire_page path
    end
    Post.each_page { |index| expire_page posts_page_path(index) }
  end
end

class Object
  def each_page
    (count / Post::PER_PAGE.to_f).ceil.times { |index| yield(index + 1) }
  end
end
