class Routine < ApplicationRecord
    # has_many :workouts, :dependent => :destroy
    has_many :workouts
    has_many :exercises, through: :workouts
end
