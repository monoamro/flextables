class Lesson < ApplicationRecord
  belongs_to :teacher
  belongs_to :grade
  has_many :time_slots
end
