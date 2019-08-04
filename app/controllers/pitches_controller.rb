class PitchesController < ApplicationController
  def show
    respond_to do |format|
      format.html
      format.json { render json: @pitch }
    end
  end

  def index
    @pitches = Pitch.all

    respond_to do |format|
      format.html
      format.json { render json: @pitches }
    end
  end

  def new

  end
end
