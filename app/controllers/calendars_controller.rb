class CalendarsController < ApplicationController

  def index
    @caleenders = Calendar.all
  end
end
