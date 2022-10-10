class CalendarsController < ApplicationController

  def index
    @calenders = Calendar.all
  end

  def new
    @calendar = Calendar.new
  end

  def create
    Calendar.create(calendar_parameter)
    redirect_to root_path
  end

  private

  def calendar_parameter
    params.require(:event).permit(:title, :content, :start_time)
  end
end
