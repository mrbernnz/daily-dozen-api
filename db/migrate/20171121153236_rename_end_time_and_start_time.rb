class RenameEndTimeAndStartTime < ActiveRecord::Migration[5.1]
  def change
    rename_column :workouts, :start_time, :start
    rename_column :workouts, :end_time, :finish
  end
end
