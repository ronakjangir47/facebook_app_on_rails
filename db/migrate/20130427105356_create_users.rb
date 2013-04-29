class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gender
      t.string :access_token

      t.string :fb_uid
      t.float :points
      t.string :remember_token
      t.timestamps
    end
  end
end
