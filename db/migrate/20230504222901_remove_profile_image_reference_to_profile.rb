class RemoveProfileImageReferenceToProfile < ActiveRecord::Migration[7.0]
  def change
    remove_column :profiles, :profile_image_id, :bigint
    add_column :profile_images, :profile_id, :bigint
  end
end
