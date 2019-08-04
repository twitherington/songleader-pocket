class SongsController < ApplicationController
  before_action :fetch_song, only: [:show, :edit, :update, :destroy, :toggle_selected]
  def show
    @pitch = Pitch.find(params[:id])
  end

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      flash[:success] = "Song was successfully created."
      redirect_to song_path(@song)
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def toggle_selected
    @song.toggle!(:selected)
    redirect_to @song
  end

  private
  def fetch_song
    @song = Song.find(params[:id])
  end

  def fetch_selected
    @song = Song.find(params[selected: true])
  end

  def song_params
    params.require(:song).permit(:name, :song_number, :pitch_id)
  end
end
