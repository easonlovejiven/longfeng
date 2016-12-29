class Manage::Role < ApplicationRecord
  self.table_name = "manage_roles"
  # 一个角色可以被多个用户拥有
  has_many :staffers, dependent: :nullify
  # 角色权限关系
  has_many :role_permissions,dependent: :destroy
  # 一个角色分配多个权限
  has_many :permissions, :through => :role_permissions, dependent: :destroy
end
