class Lesson < ApplicationRecord
  belongs_to :teacher
  belongs_to :grade
  has_many :time_slots
  validates :lesson_type, presence: true
  validates :capacity, presence: true
  validates :title, presence: true
  # validates :room, presence: true, uniqueness: { scope: :weekly_periods }
  validates :weekly_periods, presence: true
end
