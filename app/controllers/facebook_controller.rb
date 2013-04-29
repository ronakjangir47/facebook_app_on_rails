class FacebookController < ApplicationController
  before_filter :ensure_user, only: [:invities,:invite_friends]

  def canvas
    render :text => breakout_path, content_type: :html unless current_user
#    user = User.last
    if params[:code]
      user = User.fetch_details(params[:code])
      sign_in user
    end
    current_user.store_invities(params[:to]) if params[:to] && current_user
  end

  def invities
  end

  def invite_friends
    path = "https://www.facebook.com/dialog/apprequests?app_id=<%= FACEBOOK_APP_KEY %>&redirect_uri="+
        "<%= APP_URL %>&message=Would you like to join me in this great app?"
    render :text => "<html><body><script type='text/javascript' charset='utf-8'>parent.location.href = '#{path}';</script></body></html>", content_type: :html
  end

end
