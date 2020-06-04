class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # def after_sign_in_path_for(resource)
  #   if resource.student?
  #     time_slots_path
  #   else
  #     lessons_path
  #   end
  # end

  def after_sign_in_path_for(resource)
    if current_user.teacher?
      lessons_path
    elsif current_user.student?
      time_slots_path
    end
  end
end
