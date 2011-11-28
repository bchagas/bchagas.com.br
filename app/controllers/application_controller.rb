class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  include InheritedResources::DSL

  caches_page :sitemap

  def sitemap
    @posts = Post.all
  end

  def index
    if params[:id]
      render params[:id]
    else
      redirect_to '/404.html', :status => 404
    end
  end
  
end
