class ExerciseSet < ApplicationRecord
  self.table_name = 'sets'
  belongs_to :exercise
end
