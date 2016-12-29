class CreatePermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :permissions do |t|
      t.string :name
      t.integer :creator_id
      t.datetime :destroyed_at
      t.integer :active
      t.string :url
      t.integer :editor_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
