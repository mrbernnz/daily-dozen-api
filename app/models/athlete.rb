class Athlete < ApplicationRecord
  has_many :workouts
  accepts_nested_attributes_for :workouts, allow_destroy: true
  validates :first_name, :last_name, presence: true

  # def workouts_present?
  #   workout.present?
  # end
end
