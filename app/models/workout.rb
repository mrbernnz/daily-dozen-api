class Workout < ApplicationRecord
  belongs_to :athlete
  has_many :exercises

  validates_presence_of :workout_name, :day, :start, :finish, :athlete_id
end
