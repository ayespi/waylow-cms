class CreateParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :participants do |t|
      t.string :email
      t.string :name_first
      t.string :name_last
      t.string :phone
      t.integer :team_id

      t.timestamps
    end
  end
end
