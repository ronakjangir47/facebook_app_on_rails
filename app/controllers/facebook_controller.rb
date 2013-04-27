class FacebookController < ApplicationController

  def canvas
    if params[:code]
      access_token = FacebookOath.oath.get_access_token(params[:code])
      @user_details = Koala::Facebook::API.new(access_token).get_object("me")
    end
  end

end
