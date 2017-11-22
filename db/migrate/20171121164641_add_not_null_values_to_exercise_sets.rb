class AddNotNullValuesToExerciseSets < ActiveRecord::Migration[5.1]
  def change
    change_column :sets, :number, :integer, null: false
    change_column :sets, :weight, :integer, null: false
    change_column :sets, :unit, :string, null: false
    change_column :sets, :rep, :integer, null: false
  end
end
