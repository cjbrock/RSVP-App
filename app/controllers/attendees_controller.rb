class AttendeesController < ApplicationController
  def new
    @attendee=Attendee.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @song }
    end
  end

  def list
    @attendee = Attendee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @songs }
    end
  end

end
