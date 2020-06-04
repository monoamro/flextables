class TimeSlotsController < ApplicationController

  def index
    @time_slots = current_user.students.first.time_slots
    @monday_spots    = [1, 6, 11, 16]
    @tuesday_spots   = [2, 7, 12, 17]
    @wednesday_spots = [3, 8, 13, 18]
    @thursday_spots  = [4, 9, 14, 19]
    @friday_spots    = [5, 10, 15, 20]
  end

end
