class User < ApplicationRecord
  has_many :students
  has_many :teachers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :last_name, presence: true
  def teacher?
    students.empty?
  end

  def student?
    # raise
    teachers.empty?
  end
end
