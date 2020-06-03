class TimeSlotsController < ApplicationController

  # skip_before_action :authenticate_user!, only: [:index]

  def index
    if current_user.teacher?
      # instance variables for teacher
      # here would go something like @student = Student.find(params[:student_id])
    else
      respond_to do |format|
        format.html
        format.json {
          @student = current_user.students.first
          @time_slots = @student.time_slots.includes(:lesson) #.includes fices n+1 querie problem
          @lessons = @time_slots.map(&:lesson)
          render json: { student: @student, time_slots: @time_slots, lessons: @lessons }
        }
      end
    end
  end
end
