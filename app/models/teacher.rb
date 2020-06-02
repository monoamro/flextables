class Teacher < ApplicationRecord
  belongs_to :user
  has_many :lessons
  # validates :first_name, presence: true
  # validates :last_name, presence: true, uniqueness: true
end
