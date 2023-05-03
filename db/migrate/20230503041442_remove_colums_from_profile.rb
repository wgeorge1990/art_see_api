class RemoveColumsFromProfile < ActiveRecord::Migration[7.0]
  def change
    remove_column :profiles, :image_url, :string
    remove_column :profiles, :followers, :integer
    remove_column :profiles, :following, :integer
    remove_column :profiles, :bio, :string
    remove_column :profiles, :profile_image, :string
    remove_column :profiles, :first_name, :string
    remove_column :profiles, :last_name, :string
    remove_column :profiles, :logged_in_at, :datetime
    remove_column :profiles, :logged_out_at, :datetime
    remove_column :profiles, :birthday, :date
    remove_column :profiles, :active, :boolean
    remove_column :profiles, :middle_name, :string
    remove_column :profiles, :headline, :string
    remove_column :profiles, :age, :integer

  end
end
