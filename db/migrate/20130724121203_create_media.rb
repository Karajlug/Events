class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.integer :album_id
      t.text :desc

      t.timestamps
    end
  end
end
