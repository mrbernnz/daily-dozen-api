class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.references :athlete, foreign_key: true
      t.string :workout_name
      t.date :date
      t.time :start_time
      t.time :end_time
      t.text :notes

      t.timestamps
    end
  end
end
