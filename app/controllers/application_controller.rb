class ApplicationController < ActionController::Base
  protect_from_forgery
  include FacebookHelper

  def ensure_user
    redirect_to :root unless current_user
  end

  def breakout_path
    path = $oauth.url_for_oauth_code(:permissions => 'email,publish_stream')
    "<html><body><script type='text/javascript' charset='utf-8'>parent.location.href = '#{path}';</script></body></html>"
  end

end
