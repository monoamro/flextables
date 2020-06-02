class Student < ApplicationRecord
  belongs_to :user
  belongs_to :grade
  has_many :time_slots
end
