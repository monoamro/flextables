class TimeSlotsController < ApplicationController

  def index
    @time_slots = current_user.students.first.time_slots
    @spots = (1..20).to_a
  end

  def new
    @time_slot = TimeSlot.new
    @weekly_period = params[:weekly_period]
  end

  def create
    @lesson = Lesson.find_by(title: time_slot_params[:lesson])
    @weekly_period = time_slot_params[:weekly_period]
    @time_slot = TimeSlot.new(lesson: @lesson, weekly_period: @weekly_period)
    @time_slot.student = current_user.students.first
    if @time_slot.save
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
