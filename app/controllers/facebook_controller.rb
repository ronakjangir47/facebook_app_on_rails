class FacebookController < ApplicationController

  def authenticate
  end

  def authenticate_result
    redirect_to CANVAS_URL
  end

  def welcome_on_app
  #  redirect_to APP_URL
  end

end
