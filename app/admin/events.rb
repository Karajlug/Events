ActiveAdmin.register Event do
  index do
    column :id
    column :name
    column :datetime
    column :image_album_url
    column :video_album_url
    column :capacity
    column :address
    column :description
    default_actions
  end

  filter :id

  form do |f|
    f.inputs "Event" do
      f.input :name
      f.input :datetime, :as => :datetime
      f.input :image_album_url
      f.input :video_album_url
      f.input :need_registration, :as => :boolean
      f.input :capacity
      f.input :address
      f.input :description

    end

    f.actions
  end

  controller do
    def permitted_params
      params.permit(:event => [:name, :datetime, :address, :description, :need_registration, :image_album_url, :video_album_url, :capacity])
    end
  end

end
