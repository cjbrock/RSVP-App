class AttendeesController < ApplicationController
  def new
    @attendee=Attendee.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @attendee }
    end
  end

  def create
    @attendee = Attendee.new(params[:attendee])

    respond_to do |format|
      if @attendee.save
        format.html { redirect_to action: :list, notice: "You are ready to party!"}
        format.json { render json: @attendee, status: :created, location: @attendee }
      else
        format.html { render action: "new", notice: "That didn't work" }
        format.json { render json: @attendee.errors, status: :unprocessable_entity }
      end
    end
  end

  def list
    @attendees = Attendee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attendees }
    end
  end

end
