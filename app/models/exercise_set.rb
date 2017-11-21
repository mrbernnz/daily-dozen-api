class ExerciseSet < ApplicationRecord
  self.table_name = 'sets'
  belongs_to :exercise

  validates_presence_of :number, :weight, :unit, :rep, :exercise_id
end
