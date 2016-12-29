# class ActionDispatch::Rounting::Mapper
#   def draw(route_name, namespace_name = nil)
#     instance_eval(File.read(Rails.root.join("config/routes", namespace_name.to_s, "#{route_name}.rb")))
#   end
# end

Rails.application.routes.draw do
  load "#{Rails.root}/config/routes/admin/manage.rb"
end

