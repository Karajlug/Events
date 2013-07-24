ActiveAdmin.register Media do


  index do
    column :id
    column :album
    column :file
    column :desc
    default_actions
  end

  filter :id

  form do |f|
    f.inputs "Album" do
      f.input :album_id, :as => :select, :collection => Album.all
      f.input :file, :as => :file
      f.input :desc
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit(:media => [:album_id, :file, :desc])
    end
  end

end
