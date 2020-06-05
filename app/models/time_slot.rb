class TimeSlot < ApplicationRecord
  belongs_to :student
  belongs_to :lesson
  validates :weekly_period, uniqueness: { scope: :student_id,
                                          message: "This Slot is already full" }

  def self.first_period
    9
  end

  def self.second_period
    10
  end

  def self.third_period
    11
  end

  def self.fourth_period
    13
  end

  def start_time
    return TimeSlot.first_period  if (1..5).include?(weekly_period.to_i)
    return TimeSlot.second_period if (6..10).include?(weekly_period.to_i)
    return TimeSlot.third_period  if (11..15).include?(weekly_period.to_i)
    return TimeSlot.fourth_period if (16..20).include?(weekly_period.to_i)
  end
end
