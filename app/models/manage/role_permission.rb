class Manage::RolePermission < ApplicationRecord
  self.table_name = "manage_role_permissions"
  belongs_to :role
  belongs_to :permission
end
