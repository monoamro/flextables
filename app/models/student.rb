class Student < ApplicationRecord
  belongs_to :user
  belongs_to :grade
  has_many :time_slots
  # validates :first_name, presence: true
  # validates :last_name, presence: true, uniqueness: true
end
