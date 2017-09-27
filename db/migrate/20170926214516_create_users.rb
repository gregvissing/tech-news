class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :about_me
      t.string :profile_image
      t.integer :follower_id
      t.binary :profile_image

      t.timestamps
    end
  end
end
