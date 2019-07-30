class EventController < ApplicationController

  def index
    @meetings = Meeting.all
  end

end
