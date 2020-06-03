class Grade < ApplicationRecord
  has_many :students
  has_many :lessons
  validates :name, presence: true, uniqueness: true
end
