class Invity < ActiveRecord::Base
  attr_accessible :fb_uid

  belongs_to :user

  validates :fb_uid, presence: true, uniqueness: {scope: :user_id}
end
