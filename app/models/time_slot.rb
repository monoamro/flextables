class TimeSlot < ApplicationRecord
  belongs_to :student
  belongs_to :lesson
  validates :weekly_period, uniqueness: { scope: :student_id,
                                          message: "This Slot is already full" }

TRANSLATE_HASH_start = {
  1 => '8:00',
  2 => '8:00',
  3 => '8:00',
  4 => '8:00',
  5 => '8:00',
  6 => '9:00',
  7 => '9:00',
  8 => '9:00',
  9 => '9:00',
  10 => '9:00',
  11 => '10:00',
  12 => '10:00',
  13 => '10:00',
  14 => '10:00',
  15 => '10:00',
  16 => '11:00',
  17 => '11:00',
  18 => '11:00',
  19 => '11:00',
  20 => '11:00'
}

TRANSLATE_HASH_end = {
  1 => '8:45',
  2 => '8:45',
  3 => '8:45',
  4 => '8:45',
  5 => '8:45',
  6 => '9:45',
  7 => '9:45',
  8 => '9:45',
  9 => '9:45',
  10 => '9:45',
  11 => '10:45',
  12 => '10:45',
  13 => '10:45',
  14 => '10:45',
  15 => '10:45',
  16 => '11:45',
  17 => '11:45',
  18 => '11:45',
  19 => '11:45',
  20 => '11:45'
}

  def starttime
    TRANSLATE_HASH_start(weekly_period)
  end

  def endtime
    TRANSLATE_HASH_start(weekly_period)
  end
end
