class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :title

  def title
    @title = "TheSmallCode"
  end
end
