class Workout < ApplicationRecord
  belongs_to :athlete
  has_many :exercises
end
