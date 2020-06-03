class LessonsController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    # @lesson = Lesson.find(params[:id])

  end

  def index
    @lesson = Lesson.first
    raise
  end

end
