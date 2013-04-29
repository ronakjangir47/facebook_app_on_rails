class FacebookController < ApplicationController

  def canvas
#    user = User.last
    if params[:code]
      user = User.fetch_details(params[:code])
      sign_in user
    end
    current_user.store_invities(params[:to]) if params[:to] && current_user
  end

end
