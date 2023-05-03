class RemoveImageColumnFromProfiles < ActiveRecord::Migration[7.0]
  def change
    remove_column :profiles, :image, :string
  end
end
