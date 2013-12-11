ActiveAdmin.register Event do
  index do
    column :id
    column :name
    column :datetime
    column :address
    column :description
    default_actions
  end

  filter :id

  form do |f|
    f.inputs "Event" do
      f.input :name
      f.input :datetime, :as => :datetime
      f.input :address
      f.input :description
    end

    f.actions
  end

  controller do
    def permitted_params
      params.permit(:media => [:name, :datetime, :address, :description])
    end
  end

end
