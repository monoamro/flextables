class TimeSlotsController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.teacher?
      redirect_to lessons_path
    else
      @time_slots = current_user.students.first.time_slots
      @time_slot = TimeSlot.new
      @time_slots = current_user.students.first.time_slots
      @monday_spots    = %w(1 6 11 16)
      @tuesday_spots   = %w(2 7 12 17)
      @wednesday_spots = %w(3 8 13 18)
      @thursday_spots  = %w(4 9 14 19)
      @friday_spots    = %w(5 10 15 20)
    end
  end

  def create
    @lesson = Lesson.find_by(title: time_slot_params[:lesson])
    @weekly_period = time_slot_params[:weekly_period]
    @time_slot = TimeSlot.new(lesson: @lesson, weekly_period: @weekly_period)
    @time_slot.student = current_user.students.first
    if @time_slot.save!
      redirect_to time_slots_path
    else
      render :new
    end
  end

  def destroy
    @time_slot = TimeSlot.find(params[:id])
    @time_slot.destroy
    redirect_to time_slots_path
  end

  private

  def time_slot_params
    params.require(:time_slot).permit(:lesson, :weekly_period)
  end
end

