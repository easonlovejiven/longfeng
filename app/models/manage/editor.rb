class Manage::Editor < ApplicationRecord
  self.table_name = "manage_editors"
  belongs_to :role, class_name: 'Manage::Role'
end
