class FacebookController < ApplicationController

  def authenticate
    @oauth = FacebookOath.oath
    redirect_to @oauth.url_for_oauth_code(:permissions => 'email,publish_stream'), {:TARGET => "_top"}
  end

  def authenticate_result
    redirect_to CANVAS_URL
  end

  def welcome_on_app
  #  redirect_to APP_URL
  end

end
