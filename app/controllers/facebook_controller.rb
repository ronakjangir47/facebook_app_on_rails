class FacebookController < ApplicationController

  def canvas
    @oauth = FacebookOath.oath
  end

  def welcome_on_app
  #  redirect_to APP_URL
  end

end
