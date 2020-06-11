class LessonsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @lessons = Lesson.all.select { |lesson| lesson.teacher == current_user.teachers.first }
    @monday_spots    = %w(1 6 11 16)
    @tuesday_spots   = %w(2 7 12 17)
    @wednesday_spots = %w(3 8 13 18)
    @thursday_spots  = %w(4 9 14 19)
    @friday_spots    = %w(5 10 15 20)
  end

  def show
    @lesson = Lesson.find(params[:id])
    @spot = params[:spot].split(".")[0] if current_user.teacher?
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(lesson_params)
  end

  private

  def lesson_params
    params.require(:lesson).permit(:details, :homework)
  end
end
