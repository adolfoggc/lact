class CreatePcUsages < ActiveRecord::Migration[5.2]
  def change
    create_table :pc_usages do |t|
      t.references :student, foreign_key: true
      t.references :pc, foreign_key: true
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
