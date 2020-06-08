class LessonsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @lessons = Lesson.all.select { |lesson| lesson.teacher == current_user.teachers.first }
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.update(lesson_params)
    redirect_to lesson_path(@lesson)
  end

  private

  def lesson_params
    params.require(:lesson).permit(:details, :homework)
  end

end
