class CreatePcs < ActiveRecord::Migration[5.2]
  def change
    create_table :pcs do |t|
      t.string :number
      t.string :status
      t.string :programs
      t.string :row
      t.string :position_in_row
      t.string :complain

      t.timestamps
    end
  end
end
