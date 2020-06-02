class TimeSlot < ApplicationRecord
  belongs_to :student
  belongs_to :lesson
  validates :weekly_period, uniqueness: { scope: :student_id,
                                          message: "This Slot is already full" }
end
