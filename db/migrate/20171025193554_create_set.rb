class CreateSet < ActiveRecord::Migration[5.1]
  def change
    create_table :sets do |t|
      t.references :exercise, foreign_key: true
      t.integer :number
      t.integer :weight
      t.string :unit
      t.integer :rep
    end
  end
end
