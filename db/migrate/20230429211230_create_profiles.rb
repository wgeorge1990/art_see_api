class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.bigint  :user_id

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
