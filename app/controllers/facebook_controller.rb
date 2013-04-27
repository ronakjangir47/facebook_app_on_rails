class FacebookController < ApplicationController

  def canvas
    @oauth = FacebookOath.oath
  end

  def welcome_on_app

  end

end
