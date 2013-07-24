ActiveAdmin.register Album do

  index do
    column :name
    column :desc
    default_actions
  end

  filter :name

  form do |f|
    f.inputs "Album" do
      f.input :name
      f.input :desc
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit(:album => [:name, :desc])
    end
  end

end
