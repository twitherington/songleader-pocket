class SonglistsController < ApplicationController
  before_action :fetch_songlist, only: [:show, :edit, :update, :destroy]
  before_filter :redirect_cancel, only: [:create, :update]

  def show
  end

  def index
    @songlists = Songlist.all
  end

  def new
    @songlist = Songlist.new
  end

  def edit
  end

  def update
  end

  def create
    @songlist = Songlist.new(songlist_params)
    if @songlist.save
      flash[:success] = 'Song List was successfully created.'
      redirect_to songlist_path(@songlist)
    else
      render 'new'
    end
  end

  def destroy
  end

  private
  def fetch_songlist
    @songlists = Songlist.find(params[:id])
  end

  def songlist_params
    params.require(:songlist).permit(:name, :service_type)
  end

  def redirect_cancel
    redirect_to songlists_path if params[:cancel]
  end
end
