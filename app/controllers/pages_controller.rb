class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :impressum, :about ]

  def home
  end

  def impressum
  end

  def about
  end
end
