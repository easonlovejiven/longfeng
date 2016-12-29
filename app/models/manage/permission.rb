class Manage::Permission < ApplicationRecord
  self.table_name = "manage_permissions"
  has_many :role_permissions, dependent: :destroy
  has_many :roles, :through => :role_permissions,dependent: :destroy
  has_many :childrens, -> {includes(:editor)}, class_name: "Manage::Permission", foreign_key: :father_id, dependent: :destroy
  belongs_to :editor, class_name: "Manage::Editor", foreign_key: :editor_id
  belongs_to :father, class_name: "Manage::Permission", foreign_key: :father_id
end
