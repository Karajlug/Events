class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :url
      t.text :desc
      t.string :name
      t.integer :event_id

      t.timestamps
    end
  end
end
