class Exercise < ApplicationRecord
    has_many :workouts, :dependent => :destroy
    has_many :routines, through: :workouts
end
