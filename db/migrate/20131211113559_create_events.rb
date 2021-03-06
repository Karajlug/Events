class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.text :address
      t.datetime :datetime
      t.boolean :need_registration
      t.string :image_album_url
      t.string :video_album_url
      t.integer :capacity
      t.timestamps
    end
  end
end
