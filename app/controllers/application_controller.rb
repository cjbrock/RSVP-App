class ApplicationController < ActionController::Base
  protect_from_forgery

  def new
    @attendee=Attendee.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @song }
    end
  end



end
