class AddColumnsToProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :image, :string
    add_column :profiles, :image_url, :string
  end
end
