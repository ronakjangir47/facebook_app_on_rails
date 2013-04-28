class CreateInvities < ActiveRecord::Migration
  def change
    create_table :invities do |t|
      t.integer :user_id
      t.string :fb_uid

      t.timestamps
    end
  end
end
