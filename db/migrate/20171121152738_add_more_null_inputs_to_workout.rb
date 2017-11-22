class AddMoreNullInputsToWorkout < ActiveRecord::Migration[5.1]
  def change
    change_column :workouts, :date, :date, null: false
    change_column :workouts, :start_time, :time, null: false
    change_column :workouts, :end_time, :time, null: false
  end
end
