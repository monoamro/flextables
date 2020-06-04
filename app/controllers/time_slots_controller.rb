class TimeSlotsController < ApplicationController

  def index
    @time_slots = current_user.students.first.time_slots
    @spots = (1..20).to_a
  end

end
