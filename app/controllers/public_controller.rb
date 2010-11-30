class PublicController < ApplicationController

  before_filter :bouncer unless Rails.env.development?

  # Public search.
  def index
    return redirect_to("/") if logged_in?
    return redirect_to("/public/") unless request.path.match(/\/$/)
    render :template => 'workspace/index', :layout => 'workspace'
  end

end