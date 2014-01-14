ActiveAdmin.register Participant do
  index do
    column :id
    column :first_name
    column :last_name
    column :email
    column :cell_phone
    column :event
    default_actions
  end

  filter :id
end
