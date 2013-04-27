class FacebookOath < ActiveRecord::Base
  attr_accessible :email, :fb_uid, :name

  def self.oath
    Koala::Facebook::OAuth.new(FACEBOOK_APP_KEY,FACEBOOK_APP_SECRET,"https://facebook-integrity.herokuapp.com/welcome_on_app")
  end

end
