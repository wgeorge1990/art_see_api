class AddProfileImageReferenceToProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :profile_image_id, :bigint
  end
end
