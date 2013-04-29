class User < ActiveRecord::Base

  has_many :invities

  def self.fetch_details(code)
    token = $oauth.get_access_token(code)
    user_details = Koala::Facebook::API.new(token).get_object("me")
    user = find_or_initialize_by_email(user_details["email"]).tap do |u|
      u.first_name = user_details["first_name"]
      u.last_name = user_details["last_name"]
      u.email = user_details["email"]
      u.gender = user_details["gender"]
      u.fb_uid = user_details["id"]
      u.access_token = token
      u.save
    end
  end

  def name
    [first_name,last_name].join(" ")
  end

  def oauth
    Koala::Facebook::API.new(access_token)
  end

end