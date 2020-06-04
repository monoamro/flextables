class LessonsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    lessons = Lesson.all
    @lessons = lessons.select{ |lesson| lesson.teacher == current_user.teachers.first }
  end

end
