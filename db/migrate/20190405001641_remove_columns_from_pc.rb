class RemoveColumnsFromPc < ActiveRecord::Migration[5.2]
  def change
    remove_column :pcs, :row, :string
    remove_column :pcs, :position_in_row, :string
  end
end
