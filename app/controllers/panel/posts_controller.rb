class Panel::PostsController < InheritedResources::Base
  before_filter :authenticate_user!
  before_filter :assign_user, :only => [:create]
  cache_sweeper :post_sweeper

  def publish
    resource.publish!
  end

  def preview
    render :text => params[:data].to_html
  end

  private

  def assign_user
    params[:post][:author] = current_user
  end
end
