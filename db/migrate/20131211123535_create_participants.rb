class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :cell_phone
      t.integer :event_id

      t.timestamps
    end
  end
end
