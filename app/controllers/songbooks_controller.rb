class SongbooksController < ApplicationController
  def index
    # @songbooks = Songbook.all
    @songbooks = Songbook.find(params[:id])
  end

  def new
    @songbooks = Songbook.new
  end

  def show
    @songbook = Songbook.find(params[:id])
  end
end
