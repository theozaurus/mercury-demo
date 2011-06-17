class ApplicationController < ActionController::Base
  protect_from_forgery

  # stub for content pages
  def show
    render action: "#{params[:content_page] || 'intro'}"
  end

end