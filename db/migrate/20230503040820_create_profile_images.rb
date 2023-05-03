class CreateProfileImages < ActiveRecord::Migration[7.0]
  def change
    create_table :profile_images do |t|
        t.string :title
      t.timestamps
    end
  end
end
