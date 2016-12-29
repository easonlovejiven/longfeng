class CreateEditors < ActiveRecord::Migration[5.0]
  def change
    create_table :editors do |t|
      t.string :name
      t.integer :role_id
      t.integer :active
      t.integer :creator_id
      t.datetime :destroyed_at
      t.integer :creator_id

      t.timestamps
    end
  end
end
