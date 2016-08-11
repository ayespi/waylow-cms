class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.integer :week_number
      t.decimal :weight_loss
      t.decimal :weight_loss_percent
      t.decimal :overall_weight_loss
      t.decimal :overall_weight_loss_percent
      t.references :participant

      t.timestamps
    end
  end
end
