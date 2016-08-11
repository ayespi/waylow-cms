class CreateWeighIns < ActiveRecord::Migration[5.0]
  def change
    create_table :weigh_ins do |t|
      t.integer :participant_id
      t.integer :team_id
      t.decimal :weight_begin
      t.decimal :weight_1
      t.decimal :weight_2
      t.decimal :weight_3
      t.decimal :weight_4
      t.decimal :weight_5
      t.decimal :weight_6
      t.decimal :weight_7
      t.decimal :weight_8
      t.decimal :weight_9
      t.decimal :weight_10
      t.decimal :weight_end

      t.timestamps
    end
  end
end
