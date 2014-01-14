ActiveAdmin.register Resource do
  index do
    column :id
    column :name
    column :url
    column :event
    column :desc
    default_actions
  end

  filter :id

  form do |f|
    f.inputs "Resource" do
      f.input :name
      f.input :url
      f.input :event_id, :as => :select, :collection => Event.all
      f.input :desc
    end

    f.actions
  end

  controller do
    def permitted_params
      params.permit(:resource => [:name, :url, :event_id, :desc])
    end
  end

end
