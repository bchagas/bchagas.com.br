class PostsController < InheritedResources::Base
  actions :index, :show
  respond_to :rss
  caches_page :all, :index, :show

  def by_tag
    @tag = params[:tag]
    paginate resource_class.published.tagged_with(@tag)
  end

  private

  def collection
    paginate end_of_association_chain.published
  end

  def paginate(posts)
    @posts = posts.paginate :page => params[:page], :per_page => Post::PER_PAGE
  end
end
