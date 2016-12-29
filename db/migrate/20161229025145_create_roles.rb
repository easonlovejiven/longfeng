class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.integer :creator_id
      t.datetime :destroyed_at
      t.integer :active
      t.string :descrption

      t.timestamps
    end
  end
end
