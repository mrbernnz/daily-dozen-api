class RenameDate < ActiveRecord::Migration[5.1]
  def change
    rename_column :workouts, :date, :day
  end
end
