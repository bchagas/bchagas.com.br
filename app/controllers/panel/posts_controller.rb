class Panel::PostsController < InheritedResources::Base
  before_filter :authenticate_user!
  before_filter :assign_user, :only => [:create]
  cache_sweeper :post_sweeper

  def publish
    if resource.published?
      redirect_to edit_panel_post_path(params[:id])
    else
      resource.publish!
    end

  end

  def preview
    render :text => params[:data].to_html
  end

  private

  def assign_user
    params[:post][:author] = current_user
  end
end
