class Exercise < ApplicationRecord
  belongs_to :workout
  has_many :exercise_sets

  validates_presence_of :exercise_name, :workout_id
end
