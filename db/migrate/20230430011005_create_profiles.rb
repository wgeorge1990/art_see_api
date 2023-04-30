class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.bigint :user_id
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :bio
      t.string :profile_image
      t.datetime :logged_in_at
      t.datetime :logged_out_at
      t.boolean :active
      t.date :birthday
      t.integer :age
      t.string :headline
      t.integer :followers
      t.integer :following

      t.timestamps
    end
  end
end
