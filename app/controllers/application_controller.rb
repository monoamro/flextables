class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if resource.teacher?
      lessons_path
    elsif resource.student?
      time_slots_path
    end
  end

  def default_url_options
  { host: ENV["http://flextables.de"] || "localhost:3000" }
end
end
