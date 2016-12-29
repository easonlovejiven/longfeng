class CreateManageRolePermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :manage_role_permissions do |t|
      t.integer :role_id
      t.integer :permission_id
      t.integer :active
      t.datetime :destroyed_at

      t.timestamps
    end
  end
end
