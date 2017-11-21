class AddNotNullValuesToExercise < ActiveRecord::Migration[5.1]
  def change
    change_column :exercises, :exercise_name, :string, null: false
  end
end
