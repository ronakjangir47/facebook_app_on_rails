class ApplicationController < ActionController::Base
  protect_from_forgery
  include FacebookHelper

  def ensure_user
    redirect_to :root unless current_user
  end

end
