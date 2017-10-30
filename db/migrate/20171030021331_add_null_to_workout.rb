class AddNullToWorkout < ActiveRecord::Migration[5.1]
  def change
    change_column :workouts, :workout_name, :string, null: false
  end
end
