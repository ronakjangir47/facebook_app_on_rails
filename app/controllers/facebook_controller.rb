class FacebookController < ApplicationController

  def canvas
    #@user=User.last
    if params[:code]
      @user = User.fetch_details(params[:code])
    end
  end

end
