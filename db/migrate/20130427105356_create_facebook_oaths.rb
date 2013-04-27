class CreateFacebookOaths < ActiveRecord::Migration
  def change
    create_table :facebook_oaths do |t|
      t.string :fb_uid
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
