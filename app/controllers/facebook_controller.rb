class FacebookController < ApplicationController

  def canvas
    if params[:code]
      @user = User.fetch_details(params[:code])
     # @user=User.last
    end
  end

end
